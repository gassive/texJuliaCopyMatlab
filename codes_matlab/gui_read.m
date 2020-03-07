function gui_read
% hObject    handle to button_read (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% ��ȡhdf�ļ����ļ������ļ�·��
[FileName_hdf,PathName_hdf] = uigetfile('*.hdf','��hdf�ļ�');

% �õ�hdf�ļ��������ļ���
global file_hdf;
file_hdf=strcat(PathName_hdf,FileName_hdf);

% ���hdf�ļ���Ϣ��Ԫ���ݣ�
fileinfo = hdfinfo(file_hdf);

% ���Vgroup�ṹ��Ϣ
Vgroup=fileinfo.Vgroup;

% ���Vdata����
global Vdata_info;
Vdata_info=Vgroup(1).Vdata;

% ��ʾVdata�и��������Ϣ
% for i=1:44
%     disp(Vdata_info.Fields(i).Name);
% end

% ����hdf��˵�
h = uibuttongroup('Title','ѡ��hdf�ļ�������','visible','off',... 
    'Position',[0.7,0.054,0.25,0.93]);

global u_hdf;
for i=1:22
u_hdf(i) = uicontrol('Style','checkbox','String',Vdata_info.Fields(i).Name,...
    'pos',[10 0+i*15-5 100 15],...
    'parent',h,'HandleVisibility','off');
end
for i=23:44
u_hdf(i) = uicontrol('Style','checkbox','String',Vdata_info.Fields(i).Name,...
    'pos',[90 0+(i-22)*15-5 75 15],...
    'parent',h,'HandleVisibility','off');
end
set(h,'SelectionChangeFcn',@selcbk);
set(h,'SelectedObject',[]);  % No selection
set(h,'Visible','on');


[FileName_txt,PathName_txt] = uigetfile('*.txt','��dst�ļ�');

% �õ�dst�ļ��������ļ���
global file_txt;
file_txt=strcat(PathName_txt,FileName_txt);

% ׼������
dst_data=int16(zeros(365,25));

% ��ȡ�ļ�
fid_in=fopen(file_txt,'r');

if(fid_in==-1)
    disp('�ļ������ڣ�');
    return;
else
    % ���ж�ȡ�ļ�������fgetl��fgets
    day=0;
    while(feof(fid_in)==0)
        text=fgetl(fid_in);
        text_len=length(text);
        
        if((text_len~=0))
            if(isspace(text(2))==1)
                continue;
            end
            day=day+1;
            dst_data(day,1)=sscanf(text,'%2d',1);
            dst_data(day,2:25)=sscanf(text(3:text_len),'%4d',24);
        end
    end
    disp('��ȡ�ļ���ϣ�');
end
fclose(fid_in);
global dst_data_all;
dst_data_all=int16(zeros(365,24));
dst_data_all(:,1:24)=dst_data(:,2:25);
dst_data_all=reshape(dst_data_all,365*24,1);