function varargout = SatlliteData(varargin)
% SATLLITEDATA M-file for SatlliteData.fig
%      SATLLITEDATA, by itself, creates a new SATLLITEDATA or raises the existing
%      singleton*.
%
%      H = SATLLITEDATA returns the handle to a new SATLLITEDATA or the handle to
%      the existing singleton*.
%
%      SATLLITEDATA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SATLLITEDATA.M with the given input arguments.
%
%      SATLLITEDATA('Property','Value',...) creates a new SATLLITEDATA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SatlliteData_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SatlliteData_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SatlliteData

% Last Modified by GUIDE v2.5 01-Sep-2012 10:38:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SatlliteData_OpeningFcn, ...
                   'gui_OutputFcn',  @SatlliteData_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SatlliteData is made visible.
function SatlliteData_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SatlliteData (see VARARGIN)

% Choose default command line output for SatlliteData
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SatlliteData wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SatlliteData_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%% 文件读取功能
% --- Executes on button press in button_read.
function button_read_Callback(hObject, eventdata, handles)
% hObject    handle to button_read (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% 获取hdf文件的文件名和文件路径
[FileName_hdf,PathName_hdf] = uigetfile('*.hdf','打开hdf文件');

% 得到hdf文件的完整文件名
global file_hdf;
file_hdf=strcat(PathName_hdf,FileName_hdf);

% 获得hdf文件信息（元数据）
fileinfo = hdfinfo(file_hdf);

% 获得Vgroup结构信息
Vgroup=fileinfo.Vgroup;

% 获得Vdata数据
global Vdata_info;
Vdata_info=Vgroup(1).Vdata;

% 显示Vdata中各个域的信息
% for i=1:44
%     disp(Vdata_info.Fields(i).Name);
% end

% 建立hdf域菜单
h = uibuttongroup('Title','选择hdf文件域数据','visible','off',... 
    'Position',[0.60,0.054,0.2,0.93]);

global u_hdf;
for i=1:22
u_hdf(i) = uicontrol('Style','checkbox','String',Vdata_info.Fields(i).Name,...
    'pos',[10 0+i*20-5 100 20],...
    'parent',h,'HandleVisibility','off');
end
for i=23:44
u_hdf(i) = uicontrol('Style','checkbox','String',Vdata_info.Fields(i).Name,...
    'pos',[90 0+(i-22)*20-5 75 20],...
    'parent',h,'HandleVisibility','off');
end
set(h,'SelectionChangeFcn',@selcbk);
set(h,'SelectedObject',[]);  % No selection
set(h,'Visible','on');

%% 数据画图功能
% --- Executes on button press in button_draw.
function button_draw_Callback(hObject, eventdata, handles)
% hObject    handle to button_draw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global file_hdf;
global Vdata_info;
global u_hdf;

% 计算选中的域个数
num_check=0;
for i=1:44
if_check=get(u_hdf(i),'Value');
if(if_check==1)
    num_check=num_check+1;
    check_NO(num_check)=i;
end
end


% 分别读取和画出每个域的内容

h_edit=findobj('Tag','edit1');
t_start=get(h_edit,'string');
t_start=str2num(t_start);
disp(t_start);
h_edit=findobj('Tag','edit2');
t_end=get(h_edit,'string');
t_end=str2num(t_end);
disp(t_end);


plot_hight=0.85/num_check;
for i=1:num_check
    hdf_cell=hdfread(file_hdf, '/VG_MAGSWE_data_64sec/MAGSWE_data_64sec', 'Fields',Vdata_info.Fields(check_NO(i)).Name, 'FirstRecord',1 ,'NumRecords',36451);
%     hdf_cell_doy=hdfread(file_hdf, '/VG_MAGSWE_data_64sec/MAGSWE_data_64sec', 'Fields','fp_doy', 'FirstRecord',1 ,'NumRecords',36451);
    data=hdf_cell{1};
%     doy=hdf_cell_doy{1};
%     max(doy)
%     min(doy)
    index=find(data<-9e+003);
    data(index)=NaN;
    subplot('Position',[0.06 0.1+plot_hight*(i-1) 0.38 plot_hight-0.01]);
%     plot(doy(t_start:t_end),data(t_start:t_end));
    plot(data(t_start:t_end),'k');
    axis tight;
    ch=Vdata_info.Fields(check_NO(i)).Name;
    k=find(ch=='_');ch(k)='-';
    ylabel(ch);
    if(i~=1)
        set(gca, 'xtick', []) 
    end
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --------------------------------------------------------------------
function menu_operation_Callback(hObject, eventdata, handles)
% hObject    handle to menu_operation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_exit_Callback(hObject, eventdata, handles)
% hObject    handle to menu_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;


% --------------------------------------------------------------------
function menu_read_Callback(hObject, eventdata, handles)
% hObject    handle to menu_read (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_draw_Callback(hObject, eventdata, handles)
% hObject    handle to menu_draw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_savefigure.
function pushbutton_savefigure_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_savefigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h_fig=get(0,'CurrentFigure');
h_axes=get(h_fig,'CurrentAxes');
set(h_fig,'color',[1 1 1]);
% f=getframe(gca);

f = getframe(h_fig,[1 1 414 500]) 

% 获取png文件的文件名和文件路径
[FileName_png,PathName_png] = uiputfile('*.png','保存png文件');

% 得到png文件的完整文件名
file_png=strcat(PathName_png,FileName_png);
imwrite(f.cdata,file_png);

% saveas(h_fig,'test.png');
set(h_fig,'color',[0.831 0.816 0.784]);
