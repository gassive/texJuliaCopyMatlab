function ex_3_5()
%�ļ���ex_3_5.m
%��ʾ���ɱ�����ĺ��������ͷ���ֵ

%��֪���ж��ٸ�����
ex_3_5_sub_varin('aa','bb');
ex_3_5_sub_varin('aa','bb','cc');

%��֪���ж��ٸ�����ֵ
pp=ex_3_5_sub_varout(1)
[pp,pp1]=ex_3_5_sub_varout(2)
end

function ex_3_5_sub_varin(varargin)
    for i=1:nargin
        disp(varargin(i));
    end
end

function [varargout]=ex_3_5_sub_varout(nn)
    switch(nn)
        case 1
            varargout{1}=1;
        case 2
            varargout{1}=23;
            varargout{2}=2;
        otherwise
    end            
end