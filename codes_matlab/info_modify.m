% 文件：info_modify.m
% 演示：修改学生信息
function students_info=info_modify(students_info)
    for i=2:length(students_info)
        fprintf('Student id: %d\n',i);
        students_info(i).name=input('Input Name: ','s');
        students_info(i).gender=input('Input Gender: ','s');
        students_info(i).age=str2num(input('Input Age: ','s'));
        students_info(i).major=input('Input Major: ','s');
        students_info(i).grad_year=str2num(input('Input Grad_year: ','s'));
        students_info(i).record=str2num(input('Input Record: ','s'));
    end
end