% �ļ���ex_5_3_image.m
% ��ʾ����дͼƬ

% ��ȡͼƬ
[A,map,alpha] = imread('example.bmp','bmp');
% ��ʾͼƬ
subplot(2,1,1);
image(A);
% ����
subplot(2,1,2);
B=A.^2;
image(B);
% ����ͼƬ
C=A-B;

imwrite(C,'example_matlab.bmp','bmp');