%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 文件：mainframe_gui.m
% 描述：
%   1）该文件是Project_Le的主文件，提供了最基本的图形用户界面框架；
% 作者：Le's Group
% 版本：0.01
% 日期：2012-7-21
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% main framework
while(1)
    choice=menu('Project_Le', ...
    '1）、卫星数据读取与画图', ...
    '2）、求解微分方程数值解', ...
    '3）、退出');
    if(choice==3)
        return;
    end
    % 以下执行相关的程序模块
    switch(choice)
        case 1
%             disp('执行模块-1');
            select=ex_3_menu_select ...
                ('是否开启 1）、卫星数据读取与画图程序？');
            if(strcmp(select,'No'))
                continue;
            end
            disp('已经选择开启模块1！');
            SatlliteData();
        case 2
%             disp('执行模块-2');
            select=ex_3_menu_select ...
                ('是否开启 2）、求解微分方程数值解程序？');
            if(strcmp(select,'No'))
                continue;
            end
            disp('已经选择开启模块2！');
        otherwise
    end
end