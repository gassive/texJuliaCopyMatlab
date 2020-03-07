classdef student_info_class
    properties
        name,gender,age,major,grad_year;
    end
    methods(Static)
        function s=modify_name(a)
            s=a;
        end
        function s=modify_age(a)
            s=a;
        end
        function test()
            disp('just a test ...');
        end
    end
end