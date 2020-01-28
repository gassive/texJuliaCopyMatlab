% 文件：ex_4_4.m
% 演示：面向对象编程
clear;

% 定义对象
% student_info=student_info_class;
student_info=student_info_course_class;

% 对象属性赋值
student_info.name='Liang Zheng';
student_info.gender='male';
student_info.age=27;
student_info.major='geophysics';
student_info.grad_year=2013;
disp(student_info);

% 调用对象的方法
student_info.test();
disp(student_info.name);
student_info.name=student_info.modify_name('xxx');
disp(student_info.name);
student_info.age=student_info.modify_age(25);
disp(student_info.age);

student_info.course_name='xxx';
student_info.course_record=60;
student_info=student_info.modify_course_name('xuu');
student_info=student_info.modify_course_record();
disp(student_info.course_name);
disp(student_info.course_record);
