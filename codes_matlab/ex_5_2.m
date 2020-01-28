% 文件：ex_5_2.m
% 演示：读写文件的一般方式

% 准备数组
data=int16(zeros(365,25));

% 读取文件
fid_in=fopen('dst指数\1998.txt','r');

if(fid_in==-1)
    disp('文件不存在！');
    return;
else
    % 按行读取文件函数：fgetl、fgets
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
    disp('读取文件完毕！');
end
fclose(fid_in);
return;
% 写入文件
fid_out=fopen('dst指数\1998_save.txt','w');
if(fid_in==-1)
    disp('文件不存在！');
    return;
else
    for i=1:25
        for j=1:365
            fprintf(fid_out,'%8d',data(j,i));
        end
        fprintf(fid_out,'\n');
    end
    disp('写入文件完毕！');
end
fclose(fid_out);