function ex_3_4()
%�ļ���ex_3_4.m
%��ʾ���������
fn_handle_1=@ex_3_4_sub;

fn_handle_1();

% ʹ�ú��������Ϊ�����ı���
fn_handle_2=@disp;
fn_handle_2('ex_3_4');
% �����������Ϊ������������
ex_3_4_sub_1(@disp);

% ����һ������
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