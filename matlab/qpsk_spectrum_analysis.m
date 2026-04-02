%% QPSK IF Signal Spectrum Analysis
% Focus on showing 10 carrier periods and detailed spectrum

clc; clear; close all;

%% Parameters
fs = 125e6;           % Sampling frequency (125 MHz)
fsym = 6.25e6;        % Symbol rate (6.25 MHz)
fc = 12.5e6;          % Carrier frequency (12.5 MHz)
osr = fs/fsym;        % Oversampling ratio (20)

%% Generate longer signal for better spectrum resolution
N_sym = 200;          % More symbols for smooth spectrum
N = N_sym * osr;
t = (0:N-1)/fs;

%% QPSK Symbols
sym_seq = [0, 1, 3, 2];
symbols = sym_seq(mod(0:N_sym-1, 4) + 1);

%% QPSK Mapping
i_base = zeros(1, N_sym);
q_base = zeros(1, N_sym);
for i = 1:N_sym
    switch symbols(i)
        case 0;  i_base(i) = 127;  q_base(i) = 127;
        case 1;  i_base(i) = -127; q_base(i) = 127;
        case 3;  i_base(i) = -127; q_base(i) = -127;
        case 2;  i_base(i) = 127;  q_base(i) = -127;
    end
end

%% Upsampling and RRC Filter
i_up = zeros(1, N); q_up = zeros(1, N);
i_up(1:osr:end) = i_base; q_up(1:osr:end) = q_base;

rolloff = 0.35; span = 6;
rrc_filter = rcosdesign(rolloff, span, osr, 'sqrt');
i_rrc = filter(rrc_filter, 1, i_up);
q_rrc = filter(rrc_filter, 1, q_up);

%% DDS Carrier
total_phase = cumsum(2*pi*fc/fs * ones(1, N));
cos_wave = 511 * cos(total_phase);
sin_wave = 511 * sin(total_phase);

%% Mixing
i_mix = i_rrc .* cos_wave;
q_mix = q_rrc .* sin_wave;
if_signal = i_mix - q_mix;

%% Figure 1: Time Domain - 10 Carrier Periods
figure('Name', '10 Carrier Periods', 'Position', [50 50 1400 900]);

T_c = 1/fc;
samples_10T = round(10 * fs/fc);
t_us = t(1:samples_10T) * 1e6;

% i_mix
subplot(4, 1, 1);
plot(t_us, i_mix(1:samples_10T), 'b-', 'LineWidth', 0.8);
grid on; xlabel('Time (\mus)'); ylabel('Amplitude');
title('i_{mix} = I \times cos(2\pi \times 12.5MHz \times t) - 10 Carrier Periods');

% q_mix
subplot(4, 1, 2);
plot(t_us, q_mix(1:samples_10T), 'r-', 'LineWidth', 0.8);
grid on; xlabel('Time (\mus)'); ylabel('Amplitude');
title('q_{mix} = Q \times sin(2\pi \times 12.5MHz \times t) - 10 Carrier Periods');

% IF Signal
subplot(4, 1, 3);
plot(t_us, if_signal(1:samples_10T), 'k-', 'LineWidth', 0.8);
grid on; xlabel('Time (\mus)'); ylabel('Amplitude');
title('IF Signal = i_{mix} - q_{mix} - 10 Carrier Periods');

% Zoomed IF showing modulation envelope
subplot(4, 1, 4);
plot(t_us, if_signal(1:samples_10T), 'b-', 'LineWidth', 0.5);
hold on;
plot(t_us, abs(hilbert(if_signal(1:samples_10T))), 'r--', 'LineWidth', 1.5);
plot(t_us, -abs(hilbert(if_signal(1:samples_10T))), 'r--', 'LineWidth', 1.5);
grid on; xlabel('Time (\mus)'); ylabel('Amplitude');
title('IF Signal with Envelope (showing modulation)');
legend('IF Signal', 'Envelope');

%% Figure 2: Frequency Domain Analysis
figure('Name', 'Spectrum Analysis', 'Position', [50 50 1400 600]);

% Use pwelch for smooth spectrum
[pxx_if, f] = pwelch(if_signal, hamming(8192), 4096, 65536, fs, 'centered');
pxx_db = 10*log10(pxx_if);

% Full spectrum
subplot(2, 2, 1);
plot(f/1e6, pxx_db, 'b-', 'LineWidth', 1);
grid on; xlabel('Frequency (MHz)'); ylabel('Power (dB)');
title('Full Spectrum of IF Signal');
xlim([-62.5 62.5]);
hold on;
xline(12.5, 'r--', '12.5 MHz', 'LineWidth', 2);
xline(-12.5, 'r--', '-12.5 MHz', 'LineWidth', 2);

% Zoom to positive frequencies
subplot(2, 2, 2);
plot(f/1e6, pxx_db, 'b-', 'LineWidth', 1);
grid on; xlabel('Frequency (MHz)'); ylabel('Power (dB)');
title('Zoom: Positive Frequencies (0-25 MHz)');
xlim([0 25]);
hold on;
xline(12.5, 'r--', 'f_c = 12.5 MHz', 'LineWidth', 2);
xline(12.5 + 3.125, 'g:', '+3.125 MHz (RRC rolloff)');
xline(12.5 - 3.125, 'g:', '-3.125 MHz (RRC rolloff)');
legend('Spectrum', 'Carrier', 'Sideband');

% Very zoomed to see carrier detail
subplot(2, 2, 3);
plot(f/1e6, pxx_db, 'b-', 'LineWidth', 1);
grid on; xlabel('Frequency (MHz)'); ylabel('Power (dB)');
title('Zoom: Around 12.5 MHz (\pm 1 MHz)');
xlim([11.5 13.5]);
hold on;
xline(12.5, 'r--', '12.5 MHz', 'LineWidth', 2);

% Baseband spectrum for comparison
[pxx_bb, f_bb] = pwelch(i_rrc + 1j*q_rrc, hamming(8192), 4096, 65536, fs, 'centered');
subplot(2, 2, 4);
plot(f_bb/1e6, 10*log10(pxx_bb), 'g-', 'LineWidth', 1);
grid on; xlabel('Frequency (MHz)'); ylabel('Power (dB)');
title('Baseband Spectrum (I+jQ) before modulation');
xlim([-10 10]);

%% Figure 3: Individual Signal Spectrums
figure('Name', 'Component Spectrums', 'Position', [50 50 1200 800]);

% i_mix spectrum
[pxx_imix, f_imix] = pwelch(i_mix, hamming(4096), 2048, 32768, fs, 'centered');
subplot(3, 1, 1);
plot(f_imix/1e6, 10*log10(pxx_imix), 'b-', 'LineWidth', 1);
grid on; xlabel('Frequency (MHz)'); ylabel('Power (dB)');
title('Spectrum of i_{mix} (I \times cos)');
xlim([-25 25]);
hold on;
xline(12.5, 'r--', '12.5 MHz');
xline(-12.5, 'r--', '-12.5 MHz');

% q_mix spectrum
[pxx_qmix, f_qmix] = pwelch(q_mix, hamming(4096), 2048, 32768, fs, 'centered');
subplot(3, 1, 2);
plot(f_qmix/1e6, 10*log10(pxx_qmix), 'r-', 'LineWidth', 1);
grid on; xlabel('Frequency (MHz)'); ylabel('Power (dB)');
title('Spectrum of q_{mix} (Q \times sin)');
xlim([-25 25]);
hold on;
xline(12.5, 'r--', '12.5 MHz');
xline(-12.5, 'r--', '-12.5 MHz');

% IF spectrum with annotations
subplot(3, 1, 3);
plot(f/1e6, pxx_db, 'k-', 'LineWidth', 1);
grid on; xlabel('Frequency (MHz)'); ylabel('Power (dB)');
title('Spectrum of IF = i_{mix} - q_{mix}');
xlim([-25 25]);
hold on;
xline(12.5, 'r--', 'f_c = 12.5 MHz', 'LineWidth', 2);
xline(12.5 + fsym/1e6, 'g:', '12.5 + 6.25');
xline(12.5 - fsym/1e6, 'g:', '12.5 - 6.25');
legend('IF Spectrum', 'Carrier', 'Sidebands');

%% Summary
fprintf('========================================\n');
fprintf('QPSK Simulation Summary\n');
fprintf('========================================\n');
fprintf('Carrier Frequency: %.2f MHz\n', fc/1e6);
fprintf('Symbol Rate: %.2f MHz\n', fsym/1e6);
fprintf('Sampling Rate: %.1f MHz\n', fs/1e6);
fprintf('\n');
fprintf('Peak in IF spectrum: %.3f MHz\n', f(pxx_db == max(pxx_db))/1e6);
fprintf('Expected: 12.5 MHz\n');
fprintf('\n');
fprintf('Check:\n');
fprintf('1. Time domain: 10 periods should span %.3f us\n', 10/fc*1e6);
fprintf('2. Spectrum: Peak should be at 12.5 MHz\n');
fprintf('========================================\n');
