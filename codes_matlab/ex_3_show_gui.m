%% ʵս�����ܣ�ͼ�ν���
choice=ex_3_menu();
while(choice~=3)
    switch(choice)
        case 1
            yesorno=ex_3_menu_choice('�Ƿ���1���������ݶ�ȡ��ͼ����');
            if(strcmp(yesorno,'No'))
                return;
            end
        case 2
            yesorno=ex_3_menu_choice('�Ƿ���2��΢�ַ�����ֵ���ʾ����');
            if(strcmp(yesorno,'No'))
                return;
            end
    end    
    choice=ex_3_menu();
end
