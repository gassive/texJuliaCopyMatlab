% �ļ���ex_5_5.m
% ��ʾ��MATLABͼ�ζ������ʶ

clear;clc;clf;

% ����һ��figure������þ��
h_fig=figure(1);

% ��ѯfigure�Ķ�����Ϣ
obj_fig=get(h_fig);disp(obj_fig);

% ͨ������ı�figure����ĳ�Ա����
set(h_fig,'Name','�ҵ�figure������~');
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


% ����subplot��������󣬲���þ��
h_sub_1=subplot(1,2,1);
set(h_sub_1,'Color',[0 1 0]);

% ����sin����
h_plot_1=plot(sin(1:100));

% ��ѯplot����ĳ�Ա����
obj_plot_1=get(h_plot_1);disp(obj_plot_1);

% ����plot����ĳ�Ա����
set(h_plot_1,'Color','m');
set(h_plot_1,'LineStyle','--');
return;

h_sub_2=subplot(1,2,2);
h_plot_2=plot(cos(1:100));
set(h_sub_2,'Color',[0.9 0.1 0.1]);
% set(h_axes,'Color',[0.2 0.2 0.6])
