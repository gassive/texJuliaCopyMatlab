%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% �ļ���mainframe_gui.m
% ������
%   1�����ļ���Project_Le�����ļ����ṩ���������ͼ���û������ܣ�
% ���ߣ�Le's Group
% �汾��0.01
% ���ڣ�2012-7-21
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% main framework
while(1)
    choice=menu('Project_Le', ...
    '1�����������ݶ�ȡ�뻭ͼ', ...
    '2�������΢�ַ�����ֵ��', ...
    '3�����˳�');
    if(choice==3)
        return;
    end
    % ����ִ����صĳ���ģ��
    switch(choice)
        case 1
%             disp('ִ��ģ��-1');
            select=ex_3_menu_select ...
                ('�Ƿ��� 1�����������ݶ�ȡ�뻭ͼ����');
            if(strcmp(select,'No'))
                continue;
            end
            disp('�Ѿ�ѡ����ģ��1��');
            SatlliteData();
        case 2
%             disp('ִ��ģ��-2');
            select=ex_3_menu_select ...
                ('�Ƿ��� 2�������΢�ַ�����ֵ�����');
            if(strcmp(select,'No'))
                continue;
            end
            disp('�Ѿ�ѡ����ģ��2��');
        otherwise
    end
end