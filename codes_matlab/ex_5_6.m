% 文件：ex_5_5.m
% 演示：MATLAB图形对象的认识

clear;clc;clf;

% 创建一个figure，并获得句柄
h_fig=figure(1);

% 查询figure的对象信息
obj_fig=get(h_fig);disp(obj_fig);

% 通过句柄改变figure对象的成员属性
set(h_fig,'Name','我的figure我做主~');
% 
% disp('xxxxxxx');
% plot(sin(100));
% h_axes=get(h_fig,'CurrentAxes');
% obj_axes=get(h_axes);
% disp(obj_axes);
% % set(h_axes,'C')
% h_xlabel=get(h_axes,'XLabel');
% obj_xlabel=get(h_xlabel);disp(obj_xlabel);
% % set(h_xlabel)
% set(h_xlabel,'String','haha');
% set(h_xlabel,'Color','r')
% return;


% 创建subplot子数轴对象，并获得句柄
h_sub_1=subplot(1,2,1);
set(h_sub_1,'Color',[0 1 0]);

% 绘制sin函数
h_plot_1=plot(sin(1:100));

% 查询plot对象的成员属性
obj_plot_1=get(h_plot_1);disp(obj_plot_1);

% 更改plot对象的成员属性
set(h_plot_1,'Color','m');
set(h_plot_1,'LineStyle','--');
return;

h_sub_2=subplot(1,2,2);
h_plot_2=plot(cos(1:100));
set(h_sub_2,'Color',[0.9 0.1 0.1]);
% set(h_axes,'Color',[0.2 0.2 0.6])

