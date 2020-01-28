% 文件：ex_5_3_xls.m
% 演示：读写excel文件

clear;clc;
ranmat=rand(20,20)*10000;


xlswrite('ranxls',ranmat);
xlsfinfo('dst指数\复件 1998.xls')
[FileName,PathName] = uigetfile('*.xls','Select the Excel File!');
file=strcat(PathName,FileName);
data=xlsread(file);