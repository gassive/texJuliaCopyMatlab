function gui_save
% hObject    handle to pushbutton_savefigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h_fig=get(0,'CurrentFigure');
h_axes=get(h_fig,'CurrentAxes');
set(h_fig,'color',[1 1 1]);
% f=getframe(gca);

f = getframe(h_fig,[100 1 450 400]) 

% 获取png文件的文件名和文件路径
[FileName_png,PathName_png] = uiputfile('*.png','保存png文件');

% 得到png文件的完整文件名
file_png=strcat(PathName_png,FileName_png);
imwrite(f.cdata,file_png);

% saveas(h_fig,'test.png');
set(h_fig,'color',[0.831 0.816 0.784]);