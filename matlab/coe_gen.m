%% QPSK RRC 滤波器系数生成 - 匹配 125MSPS / 6.25MHz
clear; clc;

%% 1. 项目参数（固定不动）
Fs = 125e6;          % DAC 采样率
Rs = 6.25e6;         % QPSK 符号率
osr = Fs / Rs;       % 过采样率 = 20
alpha = 0.35;        % 滚降系数
span = 16;           % 符号跨度（20个符号，稳定好用）
num_taps = span * osr; % 滤波器阶数 = 240

%% 滤波器阶数是否和 长度有关系？？
%% 这里使用6.25M的符号率 Fs/Rs = 20  得到过20的采样率  和span有什么关系

%% 2. 生成 RRC 滤波器系数
h = rcosdesign(alpha, span, osr, 'sqrt'); % 生成 RRC 根升余弦

%% 3. 量化为 16bit 有符号数（FPGA 用）
coef_width = 16;
h_quant = round(h * (2^(coef_width-1) - 1)); % 量化

%% 4. 生成 .coe 文件（Xilinx FIR IP 专用）
fid = fopen('rrc_filter.coe','w');
fprintf(fid, 'radix=10;\n');
fprintf(fid, 'coefdata=');
for i = 1:length(h_quant)
    fprintf(fid, '%d,', h_quant(i));
end
fseek(fid, -1, 0); % 删除最后一个逗号
fprintf(fid, ';\n');
fclose(fid);

disp('✅ rrc_filter.coe 生成完成！');
disp(['滤波器阶数：', num2str(length(h_quant))]);