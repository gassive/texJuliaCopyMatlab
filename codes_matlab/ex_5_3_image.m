% 文件：ex_5_3_image.m
% 演示：读写图片

% 读取图片
[A,map,alpha] = imread('example.bmp','bmp');
% 显示图片
subplot(2,1,1);
image(A);
% 运算
subplot(2,1,2);
B=A.^2;
image(B);
% 保存图片
C=A-B;

imwrite(C,'example_matlab.bmp','bmp');