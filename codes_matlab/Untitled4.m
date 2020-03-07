cell = hdfread('magswe_data_64sec_2246.hdf', '/VG_MAGSWE_data_64sec/MAGSWE_data_64sec', 'Fields', 'day', 'FirstRecord',1 ,'NumRecords',36451);
data=cell{1};
disp(min(data));
disp(max(data));