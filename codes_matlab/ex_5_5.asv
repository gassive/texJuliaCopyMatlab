% 文件：ex_5_5.m
% 演示：hdf文件读写

clear;clc;
% 1、使用hdftool工具交互式读取
% hdftool;
% return;

% 2、获得hdf文件信息（元数据）
fileinfo = hdfinfo('magswe_data_64sec_2246.hdf');
% 显示hdf文件结构信息
disp(fileinfo);
% 显示hdf文件结构信息中Vgroup结构的信息
disp(fileinfo.Vgroup);
% 获得Vgroup结构信息
Vgroup=fileinfo.Vgroup;
% 查看Vgroup结构类型
whos Vgroup;
% 获得Vgroup结构的名字
Name_1=Vgroup(1).Name;
Name_2=Vgroup(2).Name;
disp(Name_1);disp(Name_2);
% 获得Vdata数据
Vdata_1=Vgroup(1).Vdata;
Vdata_2=Vgroup(2).Vdata;
disp(Vdata_1);disp(Vdata_2);
disp(Vdata_1.Fields);
return;
% 显示Vdata中各个域的信息
for i=1:44
    disp(Vdata_1.Fields(i));
end
return;

% 3、读取hdf文件内容
% 利用上述信息读取hdf文件，按不同域获得元胞数组
Tp_cell = hdfread('magswe_data_64sec_2246.hdf', '/VG_MAGSWE_data_64sec/MAGSWE_data_64sec', 'Fields', 'Tp', 'FirstRecord',1 ,'NumRecords',36451);
Np_cell = hdfread('magswe_data_64sec_2246.hdf', '/VG_MAGSWE_data_64sec/MAGSWE_data_64sec', 'Fields', 'Np', 'FirstRecord',1 ,'NumRecords',36451);
% 将元胞数组转换为普通数组使用
Tp=Tp_cell{1};
Np=Np_cell{1};

index=find(Tp<-9e+003);
Tp(index)=NaN;
subplot(2,1,1);
plot(Tp(23335:24987));
axis tight;

index=find(Np<-9e+003);
Np(index)=NaN;
subplot(2,1,2);
plot(Np(23335:24987));
axis tight;
