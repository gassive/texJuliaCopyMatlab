% �ļ���ex_4_3.m
% ��ʾ���ṹ�����
clear;

% ��ʼ���ṹ��
student_info=struct( ...
    'name','Liang ZHENG', ...
    'gender','Male', ...
    'age',27, ...
    'major','Geophysics', ...
    'grad_year',2013, ...
    'record',80);

% ����ṹ������
students_info=repmat(student_info,3,1);

% �������ýṹ������
students_info=info_modify(students_info);
for i=1:length(students_info)
    disp(students_info(i));
end
    