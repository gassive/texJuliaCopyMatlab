function ex_3_4_new()
%文件：ex_3_4_new.m
%演示：函数名作为参数传递

%给出输入向量
vec_input=[1:10];
%调用子函数ex_3_4_new_sub
vec_output=ex_3_4_new_sub(@ex_3_4_new_sub_add,vec_input);
%打印输出向量
vec_output
end

function value=ex_3_4_new_sub_add(vec)
value=vec+1;
end

function value=ex_3_4_new_sub(func_handle,vec)
func_handle
value=func_handle(vec);
end