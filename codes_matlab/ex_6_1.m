% 文件：ex_6_1.m
% 演示：直接编写GUI程序

clear;clc;close all;
% % plot(sin(1:100));
% h_figure=figure(...
%     'tag','从头编写GUI程序');
% return;

% 创建figure对象
h_figure=figure(...
    'tag','gui',...
    'name','从头编写GUI程序',...
    'numbertitle','off',...
    'toolbar','none',...
    'menubar','none',...
    'position',[100,100,800,400]);

% 创建menu对象
h_menu_opt=uimenu(h_figure,'label','操作');
h_menu_opt_read=uimenu(h_menu_opt,'label','读取文件','callback','gui_read');
h_menu_opt_draw=uimenu(h_menu_opt,'label','绘制图形','callback','gui_draw');
h_menu_opt_save=uimenu(h_menu_opt,'label','保存图形','callback','gui_save');
h_menu_exit=uimenu('label','退出','callback','exitprogram(h_figure)');

% 创建button对象
h_panel_opt=uipanel(h_figure,'title','操作区','position',[0.01 0.6 0.10 0.4]);
% disp(get(h_panel,'position'));
h_button_read=uicontrol(h_panel_opt,'string','读取文件','position',[10 110 60 20],'callback','gui_read');
h_button_draw=uicontrol(h_panel_opt,'string','绘制图形','position',[10 80 60 20],'callback','gui_draw');
h_button_save=uicontrol(h_panel_opt,'string','保存图形','position',[10 50 60 20],'callback','gui_save');
h_button_exit=uicontrol(h_panel_opt,'string','退出程序','position',[10 20 60 20],'callback','exitprogram(h_figure)');

% 创建图形绘制区域
% h_panel_draw_1=uipanel(h_figure,'title','绘制区-1','position',[0.12 0.6 0.6 0.4]);
h_axes_1=axes('position',[0.16 0.75 0.5 0.2]);
plot(sin([1:100]));
h_axes_2=axes('position',[0.16 0.45 0.5 0.2]);
plot(sin([1:100]));
h_axes_3=axes('position',[0.16 0.15 0.5 0.2]);
plot(cos([1:100]));

% disp(get(h_button_read,'position'));