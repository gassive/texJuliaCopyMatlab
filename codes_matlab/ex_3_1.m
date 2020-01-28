function ex_3_1(arg)
% 文件：ex_3_1.m
% 演示：递归调用
    if(arg==1)
        ex_3_1(0);
        disp(arg);
    else
        disp(arg);
    end
end
