%% QPSK Transmitter MATLAB Simulation
% System Parameters:
% - Sample Rate: 125 MHz
% - Symbol Rate: 6.25 MHz
% - Carrier Frequency: 12.5 MHz
% - Oversampling: 20x

clc; clear; close all;

%% Parameters
fs = 125e6;           % Sampling frequency (125 MHz)
fsym = 6.25e6;        % Symbol rate (6.25 MHz)
fc = 12.5e6;          % Carrier frequency (12.5 MHz)
osr = fs/fsym;        % Oversampling ratio (20)

N_sym = 40;           % Number of symbols to simulate
N = N_sym * osr;      % Total samples
t = (0:N-1)/fs;       % Time vector

%% 1. QPSK Symbol Generation (same as data_gen.v)
% Sequence: 00 -> 01 -> 11 -> 10 -> 00 ...
sym_seq = [0, 1, 2, 3];  % 00, 01, 10, 11
symbols = zeros(1, N_sym);
for i = 1:N_sym
    symbols(i) = sym_seq(mod(i-1, 4) + 1);
end

%% 2. QPSK Mapping (same as qpsk_mapper.v)
% 00 -> (+127, +127)
% 01 -> (-127, +127)
% 11 -> (-127, -127)
% 10 -> (+127, -127)
i_base = zeros(1, N_sym);
q_base = zeros(1, N_sym);

for i = 1:N_sym
    switch symbols(i)
        case 0  % 00
            i_base(i) = 127;
            q_base(i) = 127;
        case 1  % 01
            i_base(i) = -127;
            q_base(i) = 127;
        case 3  % 11
            i_base(i) = -127;
            q_base(i) = -127;
        case 2  % 10
            i_base(i) = 127;
            q_base(i) = -127;
    end
end

%% 3. Upsampling (for RRC filter)
% Insert zeros between symbols (20x oversampling)
i_up = zeros(1, N);
q_up = zeros(1, N);
i_up(1:osr:end) = i_base;
q_up(1:osr:end) = q_base;

%% 4. RRC Filter (simplified as raised cosine for simulation)
% In FPGA, this is a 120-tap FIR filter
rolloff = 0.35;
span = 6;
rrc_filter = rcosdesign(rolloff, span, osr, 'sqrt');

% Filter the upsampled signals
i_rrc = filter(rrc_filter, 1, i_up);
q_rrc = filter(rrc_filter, 1, q_up);

% Compensate for filter delay
delay = (length(rrc_filter) - 1) / 2;
i_rrc = i_rrc(delay+1:end);
q_rrc = q_rrc(delay+1:end);
i_rrc = [i_rrc, zeros(1, delay)];
q_rrc = [q_rrc, zeros(1, delay)];

%% 5. DDS - Generate 12.5MHz Carrier
% DDS phase accumulator
phase_inc = fc / fs * 2^32;  % Phase increment
phase = cumsum(phase_inc * ones(1, N));
phase = mod(phase, 2^32);
phase_rad = phase / 2^32 * 2 * pi;

% 10-bit cosine/sine (same as FPGA DDS)
cos_wave = round(511 * cos(phase_rad));  % Scale to match 10-bit output
sin_wave = round(511 * sin(phase_rad));

% Normalize to match FPGA format (signed 10-bit)
cos_wave = cos_wave / 512 * 511;  % Range approximately -511 to +511
sin_wave = sin_wave / 512 * 511;

%% 6. Complex Mixing (same as FPGA)
% I * cos
i_mix = i_rrc .* cos_wave;
% Q * sin
q_mix = q_rrc .* sin_wave;

% IF = I*cos - Q*sin
if_signal = i_mix - q_mix;

%% 7. Output Formatting (same as FPGA)
% Right shift by 16 bits and add 512 (mid-scale)
if_out = floor(if_signal / 65536) + 512;
i_out = floor(i_mix / 65536) + 512;

%% Plot Results - Time Domain (10 carrier periods)
T_carrier = 1/fc;  % Carrier period
samples_per_period = fs / fc;  % 10 samples per carrier period
num_periods = 10;
samples_to_plot = round(num_periods * samples_per_period);

figure('Position', [100 100 1200 800]);

% Plot 1: Baseband I/Q
subplot(4, 2, 1);
plot(t(1:samples_to_plot)*1e6, i_rrc(1:samples_to_plot), 'b-', 'LineWidth', 1.5);
hold on;
plot(t(1:samples_to_plot)*1e6, q_rrc(1:samples_to_plot), 'r--', 'LineWidth', 1.5);
grid on;
xlabel('Time (\mus)');
ylabel('Amplitude');
title('Baseband I/Q after RRC Filter');
legend('I (In-phase)', 'Q (Quadrature)');

% Plot 2: DDS Carrier
subplot(4, 2, 2);
plot(t(1:samples_to_plot)*1e6, cos_wave(1:samples_to_plot), 'b-', 'LineWidth', 1);
hold on;
plot(t(1:samples_to_plot)*1e6, sin_wave(1:samples_to_plot), 'r--', 'LineWidth', 1);
grid on;
xlabel('Time (\mus)');
ylabel('Amplitude');
title('DDS Carrier (12.5 MHz)');
legend('Cosine', 'Sine');

% Plot 3: i_mix (I * cos)
subplot(4, 2, 3);
plot(t(1:samples_to_plot)*1e6, i_mix(1:samples_to_plot), 'b-', 'LineWidth', 1);
grid on;
xlabel('Time (\mus)');
ylabel('Amplitude');
title('i_{mix} = I \times cos(\omega_c t)');

% Plot 4: q_mix (Q * sin)
subplot(4, 2, 4);
plot(t(1:samples_to_plot)*1e6, q_mix(1:samples_to_plot), 'r-', 'LineWidth', 1);
grid on;
xlabel('Time (\mus)');
ylabel('Amplitude');
title('q_{mix} = Q \times sin(\omega_c t)');

% Plot 5: IF Signal before scaling
subplot(4, 2, 5);
plot(t(1:samples_to_plot)*1e6, if_signal(1:samples_to_plot), 'k-', 'LineWidth', 1.5);
grid on;
xlabel('Time (\mus)');
ylabel('Amplitude');
title('IF = i_{mix} - q_{mix} (before DAC scaling)');

% Plot 6: Final IF Output (after DAC formatting)
subplot(4, 2, 6);
plot(t(1:samples_to_plot)*1e6, if_out(1:samples_to_plot), 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Time (\mus)');
ylabel('DAC Value (0-1023)');
title('IF Output (10-bit DAC format)');
ylim([0 1023]);

%% Frequency Domain Analysis
NFFT = 2^16;  % FFT length for better frequency resolution

% Plot 7: Spectrum of Baseband I
subplot(4, 2, 7);
[pxx_i, f_i] = pwelch(i_rrc, hamming(4096), 2048, NFFT, fs, 'centered');
plot(f_i/1e6, 10*log10(pxx_i), 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (MHz)');
ylabel('Power (dB)');
title('Spectrum: Baseband I after RRC');
xlim([-fs/2 fs/2]/1e6);

% Plot 8: Spectrum of IF Signal
subplot(4, 2, 8);
[pxx_if, f_if] = pwelch(if_signal, hamming(4096), 2048, NFFT, fs, 'centered');
plot(f_if/1e6, 10*log10(pxx_if), 'r-', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (MHz)');
ylabel('Power (dB)');
title('Spectrum: IF Signal (should peak at \pm12.5 MHz)');
xlim([-fs/2 fs/2]/1e6);
hold on;
xline(fc/1e6, 'g--', 'f_c = 12.5 MHz');
xline(-fc/1e6, 'g--', '-f_c = -12.5 MHz');

%% Detailed Spectrum Plot (Zoomed)
figure('Position', [100 100 800 400]);
plot(f_if/1e6, 10*log10(pxx_if), 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (MHz)');
ylabel('Power (dB)');
title('IF Signal Spectrum (Zoomed to show 12.5 MHz carrier)');
xlim([0 25]);
hold on;
xline(fc/1e6, 'r--', '12.5 MHz', 'LineWidth', 2);
xline(fc/1e6 + fsym/1e6, 'g:', '12.5 + 6.25 MHz');
xline(fc/1e6 - fsym/1e6, 'g:', '12.5 - 6.25 MHz');
legend('IF Spectrum', 'Carrier', 'Sidebands');

%% Display key information
fprintf('=== QPSK Simulation Results ===\n');
fprintf('Sampling Rate: %.1f MHz\n', fs/1e6);
fprintf('Symbol Rate: %.2f MHz\n', fsym/1e6);
fprintf('Carrier Frequency: %.2f MHz\n', fc/1e6);
fprintf('Oversampling Ratio: %d\n', osr);
fprintf('\n');
fprintf('DDS Phase Increment (hex): 0x%08X\n', round(phase_inc));
fprintf('Expected PINC for 12.5MHz: 0x1999999A\n');
fprintf('\n');
fprintf('Peak frequency in IF spectrum: %.2f MHz\n', f_if(pxx_if == max(pxx_if))/1e6);

%% Constellation Diagram
figure('Position', [100 100 500 500]);
scatter(i_base, q_base, 'filled');
grid on;
xlabel('I');
ylabel('Q');
title('QPSK Constellation Diagram');
axis([-150 150 -150 150]);
axis square;
for i = 1:length(i_base)
    text(i_base(i)+10, q_base(i)+10, sprintf('%02b', symbols(i)), 'FontSize', 12);
end
