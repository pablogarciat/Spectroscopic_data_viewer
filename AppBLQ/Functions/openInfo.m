%Abre un archivo InfoStruct y lo almacena en una variable interna de la
%aplicación [Info] y en el workspace general [InfoStructOriginal]
function [Info,Settings] = openInfo()
[File,Path] = uigetfile('*.mat');
File = load([Path,File]);
Info = File.InfoStruct;
if isfield(File,'Struct')%exist('File.Struct','var')
    Settings = File.Struct;
    %disp('Loaded analysis info')
else
    Settings = struct();
    %disp('No file information available')
end

% assignin('base','InfoStructOriginal',Info);
end