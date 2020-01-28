function ex_3_3()
%文件：ex_3_3.m
%演示：persistent变量
ex_3_3_sub;
end

function ex_3_3_sub()
for i=1:10
    ex_3_3_sub_1();
end
disp('ex_3_3_sub');
end

function ex_3_3_sub_1()
persistent aa;
% clear aa;
if(isempty(aa))
    aa=0;
end
aa=aa+1;
disp('ex_3_3_sub_1');disp(aa);
end