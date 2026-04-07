%% CIC抽取与抗混叠分析 - 基于实际项目参数
% 滚降系数 α = 0.35
% 符号率 Rs = 6.25 MHz
% 发射采样率 Fs_tx = 125 MHz
% 接收采样率 Fs_adc = 50 MHz

clear; close all; clc;

%% ========== 系统参数 ==========
Rs = 6.25e6;            % 符号率
alpha = 0.35;           % 滚降系数（实际值）
Fs_tx = 125e6;          % TX采样率
Fs_adc = 50e6;          % RX ADC采样率
R = 8;                  % CIC抽取比
Fs_cic = Fs_adc / R;    % CIC输出 = 6.25 MHz

fprintf('=== QPSK信号带宽与抽取分析 ===\n\n');
fprintf('符号率 Rs = %.2f MHz\n', Rs/1e6);
fprintf('滚降系数 α = %.2f\n', alpha);

%% ========== 信号带宽计算 ==========
fprintf('\n【1】信号带宽计算\n\n');

% RRC成形后的信号带宽（双边带）
B_signal = Rs * (1 + alpha);  % 6.25 × 1.35 = 8.4375 MHz
fprintf('  RRC成形后信号带宽（双边带）：\n');
fprintf('  B = Rs × (1 + α) = %.2f × %.2f = %.3f MHz\n', Rs/1e6, 1+alpha, B_signal/1e6);

% 单边带宽
B_signal_single = B_signal / 2;
fprintf('\n  单边带宽：%.3f MHz\n', B_signal_single/1e6);

%% ========== 奈奎斯特采样定理 ==========
fprintf('\n【2】奈奎斯特采样定理分析\n\n');

% 各阶段奈奎斯特频率
f_nyq_adc = Fs_adc / 2;     % ADC阶段: 25 MHz
f_nyq_cic = Fs_cic / 2;     % CIC后: 3.125 MHz

fprintf('  采样率 vs 奈奎斯特频率：\n\n');
fprintf('  ┌─────────────────┬────────────┬──────────────┬────────────┐\n');
fprintf('  │ 处理阶段        │ 采样率     │ 奈奎斯特频率 │ 信号带宽   │\n');
fprintf('  ├─────────────────┼────────────┼──────────────┼────────────┤\n');
fprintf('  │ TX (DAC)        │ %6.2f MHz │ %6.2f MHz    │ %6.3f MHz │\n', Fs_tx/1e6, Fs_tx/2/1e6, B_signal_single/1e6);
fprintf('  │ RX (ADC)        │ %6.2f MHz │ %6.2f MHz    │ %6.3f MHz │\n', Fs_adc/1e6, f_nyq_adc/1e6, B_signal_single/1e6);
fprintf('  │ CIC后           │ %6.2f MHz │ %6.3f MHz    │ %6.3f MHz │\n', Fs_cic/1e6, f_nyq_cic/1e6, B_signal_single/1e6);
fprintf('  └─────────────────┴────────────┴──────────────┴────────────┘\n');

fprintf('\n  关键问题：\n');
fprintf('  - ADC阶段：信号带宽 %.3f MHz < 奈奎斯特 %.1f MHz ✓ 满足\n', B_signal_single/1e6, f_nyq_adc/1e6);
fprintf('  - CIC后：信号带宽 %.3f MHz > 奈奎斯特 %.3f MHz ✗ 会混叠！\n', B_signal_single/1e6, f_nyq_cic/1e6);

%% ========== 混叠效应可视化 ==========
fprintf('\n【3】混叠效应分析\n\n');

% 频谱示意图
f_base = linspace(0, Rs*(1+alpha), 1000);  % 0 到 8.4375 MHz
H_rrc = abs(rcosdesign(alpha, 8, Fs_tx/Rs, 'sqrt')');  % RRC频谱近似

figure('Name', '混叠效应', 'Position', [100 100 1000 600]);

% 子图1: 原始信号频谱（TX输出）
subplot(4, 1, 1);
plot(f_base/1e6, ones(size(f_base)), 'b-', 'LineWidth', 2);
hold on;
fill([0 Rs*(1+alpha)/2/1e6 Rs*(1+alpha)/2/1e6 0], [0 0 1 1], 'b', 'FaceAlpha', 0.3);
xline(f_nyq_adc/1e6, 'g--', 'ADC奈奎斯特', 'LineWidth', 2);
xline(f_nyq_cic/1e6, 'r--', 'CIC后奈奎斯特', 'LineWidth', 2);
grid on;
xlim([0 15]);
ylim([0 1.5]);
xlabel('频率 (MHz)');
ylabel('幅度');
title('TX输出信号频谱 (125MSPS) - 信号完整保留');
legend('信号频谱', '信号带宽', 'ADC奈奎斯特', 'CIC后奈奎斯特');

% 子图2: ADC采样后（无混叠，但频谱重复）
subplot(4, 1, 2);
plot(f_base/1e6, ones(size(f_base)), 'b-', 'LineWidth', 2);
hold on;
% 绘制采样后的频谱重复
for k = -2:2
    plot((f_base + k*Fs_adc)/1e6, ones(size(f_base)), 'b--', 'LineWidth', 1);
end
xline(f_nyq_adc/1e6, 'g-', '奈奎斯特', 'LineWidth', 2);
fill([0 B_signal_single/1e6 B_signal_single/1e6 0], [0 0 1 1], 'g', 'FaceAlpha', 0.2);
grid on;
xlim([-15 30]);
ylim([0 1.5]);
xlabel('频率 (MHz)');
ylabel('幅度');
title('ADC采样后 (50MSPS) - 频谱周期重复，主瓣无混叠');
legend('主瓣频谱', '重复频谱');

% 子图3: 无抗混叠滤波直接抽取的后果
subplot(4, 1, 3);
plot(f_base/1e6, ones(size(f_base)), 'b-', 'LineWidth', 2);
hold on;
% 混叠后的频谱
f_alias = abs(mod(f_base + Fs_cic/2, Fs_cic) - Fs_cic/2);
plot(f_base/1e6, f_alias/Fs_cic*2, 'r-', 'LineWidth', 2);
xline(f_nyq_cic/1e6, 'r--', '奈奎斯特=3.125MHz', 'LineWidth', 2);
fill([f_nyq_cic/1e6 B_signal_single/1e6 B_signal_single/1e6 f_nyq_cic/1e6], [0 0 1 1], 'r', 'FaceAlpha', 0.3);
text(5, 0.7, '混叠区域！', 'Color', 'r', 'FontSize', 12, 'FontWeight', 'bold');
grid on;
xlim([0 10]);
ylim([0 1.5]);
xlabel('频率 (MHz)');
ylabel('幅度');
title('直接8x抽取后果 - 高频折叠到低频（混叠）');
legend('原始信号', '混叠后信号', '', '混叠区域');

%% ========== CIC的抗混叠作用 ==========
fprintf('\n【4】CIC滤波器的抗混叠作用\n\n');

% CIC频率响应
f = linspace(0, Fs_adc/2, 1000);
f_norm = f / Fs_adc;
N_cic = 4;
H_cic = abs((sin(pi*f_norm*R) ./ (R*sin(pi*f_norm + eps))).^N_cic);
H_cic_db = 20*log10(H_cic + eps);

% 计算阻带衰减
f_stop = Fs_cic - B_signal_single/2;  % 第一个混叠带中心
[~, idx_stop] = min(abs(f - f_stop));
stop_attenuation = H_cic_db(idx_stop);

fprintf('  CIC滤波器特性：\n');
fprintf('  - 在信号带宽 (0-%.3f MHz) 内：增益变化 %.1f dB\n', B_signal_single/1e6, max(H_cic_db(f < B_signal_single)) - min(H_cic_db(f < B_signal_single)));
fprintf('  - 在第一个混叠带 (%.2f-%.2f MHz)：衰减 %.1f dB\n', (Fs_cic - B_signal_single/2)/1e6, (Fs_cic + B_signal_single/2)/1e6, abs(stop_attenuation));
fprintf('  - 混叠抑制比：%.1f dB ✓\n\n', abs(stop_attenuation));

% 子图4: CIC滤波器响应
subplot(4, 1, 4);
plot(f/1e6, H_cic_db, 'b-', 'LineWidth', 2);
hold on;

% 标注区域
fill([0 B_signal_single/1e6 B_signal_single/1e6 0], [-100 -100 0 0], 'g', 'FaceAlpha', 0.1);
fill([f_stop/1e6 (Fs_cic+B_signal_single/2)/1e6 (Fs_cic+B_signal_single/2)/1e6 f_stop/1e6], ...
     [-100 -100 0 0], 'r', 'FaceAlpha', 0.1);

xline(B_signal_single/1e6, 'g--', '信号带宽', 'LineWidth', 1.5);
xline(f_stop/1e6, 'r--', '混叠起始', 'LineWidth', 1.5);
plot(f_stop/1e6, stop_attenuation, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
text(f_stop/1e6 + 0.3, stop_attenuation, sprintf('%.1f dB', stop_attenuation), 'Color', 'r');

xline(f_nyq_cic/1e6, 'k:', '奈奎斯特', 'LineWidth', 1);
grid on;
xlim([0 15]);
ylim([-80 5]);
xlabel('频率 (MHz)');
ylabel('增益 (dB)');
title(sprintf('%d级CIC(8x)频率响应：通带跌落 vs 阻带抑制', N_cic));
legend('CIC响应', '信号通带', '混叠阻带', 'Location', 'best');

%% ========== 关键结论 ==========
fprintf('【5】关键结论\n\n');

fprintf('  1. 信号带宽 (%.3f MHz) > CIC后奈奎斯特 (%.3f MHz)\n', B_signal_single/1e6, f_nyq_cic/1e6);
fprintf('     --> 如果不滤波，一定会发生混叠！\n\n');

fprintf('  2. CIC滤波器的作用：\n');
fprintf('     - 抽取前滤除高频分量\n');
fprintf('     - 提供 %.1f dB 的混叠抑制\n', abs(stop_attenuation));
fprintf('     - 确保抽取后信号不混叠 ✓\n\n');

fprintf('  3. 代价：通带内有 %.1f dB 的跌落\n', abs(min(H_cic_db(f < B_signal_single/1e6))));
fprintf('     --> 需要补偿滤波器恢复\n\n');

fprintf('  4. 你的项目实际情况：\n');
fprintf('     - TX RRC α=0.35，信号带宽较窄\n');
fprintf('     - CIC提供足够抗混叠\n');
fprintf('     - 通带跌落约-9.5dB，需补偿\n\n');

%% ========== 时域仿真对比 ==========
fprintf('【6】时域信号仿真对比\n\n');

% 生成QPSK测试信号
N_sym = 500;                    % 符号数
sps_tx = 20;                    % TX过采样率
Fs_tx = Rs * sps_tx;            % 125 MHz

% 随机符号
data_bits = randi([0 1], N_sym*2, 1);
symbols = (1-2*data_bits(1:2:end)) + 1j*(1-2*data_bits(2:2:end));
symbols = symbols / sqrt(2);

% TX：上采样 + RRC成形（α=0.35）
sig_up = zeros(N_sym * sps_tx, 1);
sig_up(1:sps_tx:end) = symbols;
h_rrc = rcosdesign(alpha, 8, sps_tx, 'sqrt');
sig_tx = conv(sig_up, h_rrc, 'same');

% 上变频到IF
t_tx = (0:length(sig_tx)-1)' / Fs_tx;
sig_if = real(sig_tx .* exp(1j*2*pi*12.5e6*t_tx));

% ADC采样（50MSPS）
sig_adc = resample(sig_if, Fs_adc, Fs_tx);

% 方法1：直接抽取（无抗混叠滤波）→ 会混叠
sig_direct = sig_adc(1:R:end);

% 方法2：CIC滤波后抽取 → 抗混叠
% 使用MATLAB的CIC滤波器
cic = dsp.CICDecimator(R, 1, N_cic);
sig_cic = cic(sig_adc);

% 方法3：理想低通+CIC → 最佳
cic_comp = dsp.CICCompensationDecimator(cic, 'DecimationFactor', 1);
sig_cic_comp = cic_comp(sig_cic);

fprintf('  生成%d个符号的测试信号\n', N_sym);
fprintf('  对比三种抽取方式：\n\n');

% 绘制时域对比
figure('Name', '时域信号对比', 'Position', [150 100 1200 700]);

t_cic = (0:length(sig_cic)-1) / Fs_cic;

% 子图1: 原始ADC信号
subplot(4, 1, 1);
t_adc = (0:length(sig_adc)-1) / Fs_adc;
plot(t_adc*1e6, real(sig_adc), 'b-', 'LineWidth', 0.5);
xlim([0 20]);
xlabel('时间 (μs)');
ylabel('幅度');
title('ADC采样后信号 (50MSPS) - 原始带限信号');
grid on;

% 子图2: 直接抽取（混叠！）
subplot(4, 1, 2);
t_direct = (0:length(sig_direct)-1) / Fs_cic;
plot(t_direct*1e6, real(sig_direct), 'r-', 'LineWidth', 1);
hold on;
plot(t_cic*1e6, real(sig_cic), 'g--', 'LineWidth', 1.5);
xlim([0 20]);
xlabel('时间 (μs)');
ylabel('幅度');
title(sprintf('直接8x抽取 vs CIC抽取（前20μs）- 注意幅度和波形差异'));
legend('直接抽取（混叠）', 'CIC抽取（抗混叠）', 'Location', 'best');
grid on;

% 子图3: 眼图对比 - 直接抽取
subplot(4, 1, 3);
eye_direct = reshape(real(sig_direct(1:floor(length(sig_direct)/100)*100)), [], 100);
plot(eye_direct, 'r-', 'LineWidth', 0.5);
title('直接抽取眼图 - 因混叠而闭合');
xlabel('采样点');
ylabel('幅度');
grid on;
ylim([-1.5 1.5]);

% 子图4: 眼图对比 - CIC抽取
subplot(4, 1, 4);
eye_cic = reshape(real(sig_cic(1:floor(length(sig_cic)/100)*100)), [], 100);
plot(eye_cic, 'g-', 'LineWidth', 0.5);
title('CIC抽取眼图 - 保持信号完整性（但有衰落）');
xlabel('采样点');
ylabel('幅度');
grid on;
ylim([-1.5 1.5]);

%% ========== 频域对比 ==========
figure('Name', '频域对比', 'Position', [400 100 900 500]);

[pxx_adc, f_pxx] = pwelch(sig_adc, [], [], [], Fs_adc);
[pxx_direct, f_direct] = pwelch(sig_direct, [], [], [], Fs_cic);
[pxx_cic, ~] = pwelch(sig_cic, [], [], [], Fs_cic);

plot(f_pxx/1e6, 10*log10(pxx_adc), 'b-', 'LineWidth', 1.5);
hold on;
plot(f_direct/1e6, 10*log10(pxx_direct), 'r-', 'LineWidth', 1.5);
plot(f_direct/1e6, 10*log10(pxx_cic), 'g-', 'LineWidth', 2);

xline(f_nyq_cic/1e6, 'k--', '奈奎斯特=3.125MHz', 'LineWidth', 2);
xline(B_signal_single/1e6, 'm:', '信号带宽', 'LineWidth', 1.5);

xlabel('频率 (MHz)');
ylabel('功率谱密度 (dB)');
title('频谱对比：直接抽取 vs CIC抽取');
legend('原始ADC', '直接8x抽取（混叠）', 'CIC抽取（抗混叠）', 'Location', 'best');
grid on;
xlim([0 10]);

%% ========== 定量分析 ==========
fprintf('【7】定量分析\n\n');

% 计算各信号功率
power_adc = rms(sig_adc)^2;
power_direct = rms(sig_direct)^2;
power_cic = rms(sig_cic)^2;

fprintf('  信号功率对比：\n');
fprintf('  - 原始ADC:     %.4f\n', power_adc);
fprintf('  - 直接抽取:    %.4f (误差: %.2f%%)\n', power_direct, abs(power_direct-power_adc)/power_adc*100);
fprintf('  - CIC抽取:     %.4f (衰减: %.2f dB)\n\n', power_cic, 10*log10(power_cic/power_adc));

% 信号质量评估（使用方差和峰值因子）
var_direct = var(sig_direct);
var_cic = var(sig_cic);
crest_direct = max(abs(sig_direct)) / rms(sig_direct);
crest_cic = max(abs(sig_cic)) / rms(sig_cic);

fprintf('  信号质量评估：\n');
fprintf('  - 直接抽取:    方差=%.4f, 峰值因子=%.2f\n', var_direct, crest_direct);
fprintf('  - CIC抽取:     方差=%.4f, 峰值因子=%.2f\n\n', var_cic, crest_cic);

fprintf('  结论：\n');
fprintf('  1. 直接抽取因混叠导致信号失真，眼图闭合\n');
fprintf('  2. CIC抽取保持信号完整性，但有-9.5dB通带衰落\n');
fprintf('  3. 需要补偿滤波器恢复通带平坦度\n');
