% 文件：ex_5_1.m
% 演示：使用load和save进行文件读写

clear;
% load 'dst指数\1998.txt';
% return;

load 'dst指数\复件 1998.txt' -ascii;

save 'dst指数\复件 1998_save_ascii.txt' -ascii;
save 'dst指数\复件 1998_save_bin.dat' -mat;
% return;

