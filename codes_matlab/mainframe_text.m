%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% �ļ���mainframe_text.m
% ������
%   1�����ļ���Project_Le�����ļ����ṩ������������������п�ܣ�
% ���ߣ�Le's Group
% �汾��0.01
% ���ڣ�2012-7-21
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% main framework
while(1)
    % ��ʾ��ʾ
    disp('Project_Le ver 0.01');
    disp('�˵���');
    disp('1�����������ݶ�ȡ�뻭ͼ');
    disp('2�������΢�ַ�����ֵ��');
    disp('3�����˳�');
    
    % �û�ѡ�����ģ��
    choice=input('��ѡ��:');
    if(choice==3)
        return;
    end
    % ����ִ����صĳ���ģ��
    switch(choice)
        case 1
            % function 1
        case 2
            % function 2
        otherwise
    end
end