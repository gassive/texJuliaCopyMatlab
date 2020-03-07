%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 文件：mainframe_text.m
% 描述：
%   1）该文件是Project_Le的主文件，提供了最基本的命令行运行框架；
% 作者：Le's Group
% 版本：0.01
% 日期：2012-7-21
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% main framework
while(1)
    % 显示提示
    disp('Project_Le ver 0.01');
    disp('菜单：');
    disp('1）、卫星数据读取与画图');
    disp('2）、求解微分方程数值解');
    disp('3）、退出');
    
    % 用户选择程序模块
    choice=input('请选择:');
    if(choice==3)
        return;
    end
    % 以下执行相关的程序模块
    switch(choice)
        case 1
            % function 1
        case 2
            % function 2
        otherwise
    end
end