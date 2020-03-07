classdef student_info_course_class<student_info_class
    properties
        course_name,course_record;
    end
    methods
        function obj=modify_course_name(obj,a)
            obj.course_name=a;
        end
        function obj=modify_course_record(obj)
            obj.course_record=obj.course_record*2;
        end
    end
end