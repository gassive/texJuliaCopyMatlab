% �ļ���ex_5_4.m
% ��ʾ���ڴ�ӳ�����

clear;
% �����ļ�
% randData=rand(5000,1);
% fid = fopen('records.dat','w');
% save 'records.txt' -ascii
% % fwrite(fid, randData, 'double');
% fclose(fid);
% return;
% Ϊrecords.dat����һ��ӳ�����
m = memmapfile('records.txt','Writable',true);

% ��һ�¶���m������
disp(m);

% ���ʹ�ã�
m.Data(:)=m.Data(:).*2;