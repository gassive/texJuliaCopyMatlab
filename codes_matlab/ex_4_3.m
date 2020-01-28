% 文件：ex_4_3.m
% 演示：结构体操作
clear;

% 初始化结构体
student_info=struct( ...
    'name','Liang ZHENG', ...
    'gender','Male', ...
    'age',27, ...
    'major','Geophysics', ...
    'grad_year',2013, ...
    'record',80);

% 定义结构体数组
students_info=repmat(student_info,3,1);

% 函数调用结构体数组
students_info=info_modify(students_info);
for i=1:length(students_info)
    disp(students_info(i));
end
    