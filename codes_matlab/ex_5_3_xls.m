% �ļ���ex_5_3_xls.m
% ��ʾ����дexcel�ļ�

clear;clc;
ranmat=rand(20,20)*10000;


xlswrite('ranxls',ranmat);
xlsfinfo('dstָ��\���� 1998.xls')
[FileName,PathName] = uigetfile('*.xls','Select the Excel File!');
file=strcat(PathName,FileName);
data=xlsread(file);