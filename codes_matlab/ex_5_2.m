% �ļ���ex_5_2.m
% ��ʾ����д�ļ���һ�㷽ʽ

% ׼������
data=int16(zeros(365,25));

% ��ȡ�ļ�
fid_in=fopen('dstָ��\1998.txt','r');

if(fid_in==-1)
    disp('�ļ������ڣ�');
    return;
else
    % ���ж�ȡ�ļ�������fgetl��fgets
    day=0;
    while(feof(fid_in)==0)
        text=fgetl(fid_in);
        text_len=length(text);
        
        if((text_len~=0))
            if(isspace(text(2))==1)
                continue;
            end
            day=day+1;
            data(day,1)=sscanf(text,'%2d',1);
            data(day,2:25)=sscanf(text(3:text_len),'%4d',24);
        end
    end
    disp('��ȡ�ļ���ϣ�');
end
fclose(fid_in);
return;
% д���ļ�
fid_out=fopen('dstָ��\1998_save.txt','w');
if(fid_in==-1)
    disp('�ļ������ڣ�');
    return;
else
    for i=1:25
        for j=1:365
            fprintf(fid_out,'%8d',data(j,i));
        end
        fprintf(fid_out,'\n');
    end
    disp('д���ļ���ϣ�');
end
fclose(fid_out);