% 文件：ex_4_2.m
% 演示：元胞数组操作
clear;
student_info_array={'Liang Zheng','Male',27};
disp('Name: ');
name=student_info_array(2);
disp(name);

student_info={'Liang Zheng','Male',27;'Geophysics','Scientific Computing',2013};
disp('Name:');
name=student_info(1,1);
disp(name);
disp('Gender:');
gender=student_info(1,2);
disp(gender);
disp('Age:');
age=student_info(1,3);
disp(age);
major=student_info(2,1);
disp(major);
