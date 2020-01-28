% �ļ���ex_5_fits.m
% ��ʾ��MATLAB��ȡfits�ļ�

% http://fits.gsfc.nasa.gov/fits_documentation.html
clear;
% �鿴fits�ļ���Ϣ
S = fitsinfo('22072506.fts');disp(S);
S = fitsinfo('22072509.fts');disp(S);
% ��ȡfits�ļ�
data_1 = fitsread('22072506.fts', 'Primary');
data_2 = fitsread('22072509.fts', 'Primary');
% ��ͼ
subplot(2,2,1);
imagesc(data_1);
subplot(2,2,2);
imagesc(data_2);
data_3=data_1-data_2;
subplot(2,2,3);
image(data_3/10);

colormap(hot);