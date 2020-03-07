function gui_draw
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

cell = hdfread('magswe_data_64sec_2246.hdf', '/VG_MAGSWE_data_64sec/MAGSWE_data_64sec', 'Fields', 'fp_doy', 'FirstRecord',1 ,'NumRecords',36451);
x_data=cell{1};
% 分别读取和画出每个域的内容

% h_edit=findobj('Tag','edit1');
% t_start=get(h_edit,'string');
% t_start=str2num(t_start);
% disp(t_start);
% h_edit=findobj('Tag','edit2');
% t_end=get(h_edit,'string');
% t_end=str2num(t_end);
% disp(t_end);


plot_hight=0.85/(num_check+1);
for i=1:num_check
    hdf_cell=hdfread(file_hdf, '/VG_MAGSWE_data_64sec/MAGSWE_data_64sec', 'Fields',Vdata_info.Fields(check_NO(i)).Name, 'FirstRecord',1 ,'NumRecords',36451);
%     hdf_cell_doy=hdfread(file_hdf, '/VG_MAGSWE_data_64sec/MAGSWE_data_64sec', 'Fields','fp_doy', 'FirstRecord',1 ,'NumRecords',36451);
    data=hdf_cell{1};
%     doy=hdf_cell_doy{1};
%     max(doy)
%     min(doy)
    index=find(data<-9e+003);
    data(index)=NaN;
    subplot('Position',[0.20 0.1+plot_hight*(i) 0.45 plot_hight-0.01]);
%     plot(doy(t_start:t_end),data(t_start:t_end));
    plot(x_data,data,'k');
    axis tight;
    ch=Vdata_info.Fields(check_NO(i)).Name;
    k=find(ch=='_');ch(k)='-';
    ylabel(ch);
    if(i~=1)
        set(gca, 'xtick', []) 
    end
end

subplot('Position',[0.20 0.1+plot_hight*0 0.45 plot_hight-0.01]);
global dst_data_all;
plot(dst_data_all(23:49),'k');axis tight;