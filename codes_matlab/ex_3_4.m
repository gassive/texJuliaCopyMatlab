function ex_3_4()
%文件：ex_3_4.m
%演示：函数句柄
fn_handle_1=@ex_3_4_sub;

fn_handle_1();

% 使用函数句柄作为函数的别名
fn_handle_2=@disp;
fn_handle_2('ex_3_4');
% 将函数句柄作为函数参数调用
ex_3_4_sub_1(@disp);

% 给出一个向量
vec_in=[1:100];
vec_out=ex_3_4_sub_2(@cos,vec_in);
plot(vec_out);
end

function ex_3_4_sub()
disp('ex_3_4_sub');
end

function ex_3_4_sub_1(func_handle)
func_handle('ex_3_4_sub_1');
end

function val=ex_3_4_sub_2(func_handle,vector)
val=func_handle(vector);
end