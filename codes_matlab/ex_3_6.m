function ex_3_6()
%文件：ex_3_6.m
%演示：函数的嵌套定义

ex_3_6_1;
ex_3_6_2;

    %嵌套定义函数 1：
    function ex_3_6_1()
        disp('ex_3_6_1');
        ex_3_6_1_1;
        %尝试再定义新的函数~
        function ex_3_6_1_1()
            disp('ex_3_6_1_1');
        end
    end

    %嵌套定义函数 1：
    function ex_3_6_2()
        disp('ex_3_6_2');
    end
end