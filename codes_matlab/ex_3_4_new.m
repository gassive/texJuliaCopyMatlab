function ex_3_4_new()
%�ļ���ex_3_4_new.m
%��ʾ����������Ϊ��������

%������������
vec_input=[1:10];
%�����Ӻ���ex_3_4_new_sub
vec_output=ex_3_4_new_sub(@ex_3_4_new_sub_add,vec_input);
%��ӡ�������
vec_output
end

function value=ex_3_4_new_sub_add(vec)
value=vec+1;
end

function value=ex_3_4_new_sub(func_handle,vec)
func_handle
value=func_handle(vec);
end