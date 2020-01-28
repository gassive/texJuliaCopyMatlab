% 文件：ex_5_fits.m
% 演示：MATLAB读取fits文件

% http://fits.gsfc.nasa.gov/fits_documentation.html
clear;
% 查看fits文件信息
S = fitsinfo('22072506.fts');disp(S);
S = fitsinfo('22072509.fts');disp(S);
% 读取fits文件
data_1 = fitsread('22072506.fts', 'Primary');
data_2 = fitsread('22072509.fts', 'Primary');
% 画图
subplot(2,2,1);
imagesc(data_1);
subplot(2,2,2);
imagesc(data_2);
data_3=data_1-data_2;
subplot(2,2,3);
image(data_3/10);

colormap(hot);