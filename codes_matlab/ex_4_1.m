% �ļ���ex_4_1.m
% ��ʾ�������ַ�������

%% 1���ַ�������
% �ַ����ַ����Ļ�����ɵ�λ
% һ���ַ��Ĵ�С�������ֽ�
char_a='a';
% �ַ������ַ����飨�ַ�������
string_a=['a','a'];
% �ַ������õ��������������ַ�����
string_a_1='aa';
% �������ַ���
string_b=blanks(2);

%% 2���ַ���������������
% ���Խ��ַ�������Ϊ�ַ�������Ҳ���Զ��ַ�����������(����)����
string_c='My name is Liang';
c_length=length(string_c);
c_size=size(string_c);
c_sub=string_c(4:8);
c_transpose=string_c';
string_c_matrix=[string_c;string_c;string_c];

%% 3���ַ������ò�����ʹ��built-in������
string_1='My name is';
string_2=' Liang';

% �ַ�������
% ע�⣺���ӵĵ�һ���ַ���ĩλ�ո�ᱻ���ԣ�
string_3=strcat(string_1,string_2);
% �ַ����Ƚ�
string_compare=strcmp(string_c,string_3);
% �ַ�������
string_find=findstr(string_2,string_3);
% �ַ����滻
string_replace=strrep(string_3,string_2,' xxxx');
% �ַ����ָ�
[string_tok,remain]=strtok(string_3);
[string_tok_1,remain_1]=strtok(string_3,'is');
% ɾ��β���ո�
string_deblank=deblank(' s fd ');
% ɾ����β�ո�
string_trim=strtrim(' s fd ');
% �ı��Сд
string_lower=lower(string_3);
string_upper=upper(string_3);

%% 4���ַ����ĸ�ʽ������
fprintf('My name is %s \n',string_2);
num_1=35;
fprintf('Number is %d \n',num_1);
fprintf('Number is %5d \n',num_1);
num_2=35.7;
fprintf('Number is %10.5f \n',num_2);
fprintf('Number is %.7f \n',num_2);

%% 5��is���� 
temp_1=isletter('xxxx2xx34x');
temp_2=isspace(' fs fsd ');

%% 6���ַ��������ֵ��໥ת��
s1=int2str(num_1);
s2=num2str(num_2);
s3='467.78';
num_3=str2num(s3);