function [data,states,parms] = selectDatFile
loadBCI2kTools;
olddir = pwd;
cd('C:\BCI2000.x64\Data');
[file,path] = uigetfile('*.dat');
cd(olddir);
[data,states,parms]=load_bcidat(strcat(path,'\',file),1);
end