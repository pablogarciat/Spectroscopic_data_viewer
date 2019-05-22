%Abre un archivo InfoStruct y lo almacena en una variable interna de la
%aplicación [Info] y en el workspace general [InfoStructOriginal]
function [Info] = openInfo()
[File,Path] = uigetfile('*.mat');
Info = load([Path,File]);
Info = Info.InfoStruct;
% assignin('base','InfoStructOriginal',Info);
end