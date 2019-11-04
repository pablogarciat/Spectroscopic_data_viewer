function [] = saveInfo()

% global Transformadas
% global DistanciaFourierColumnas
% global DistanciaFourierFilas
% global DistanciaColumnas
% global DistanciaFilas
% global Energia
% global TamanhoRealColumnas
% global TamanhoRealFilas
% global ParametroRedColumnas
% global ParametroRedFilas
% global MatrizNormalizada
% global MapasConductancia
% global Voltaje
% global PuntosDerivada
global SaveFolder
% evalin('base','PuntosDerivada')
Transformadas                           = evalin('base','Transformadas');
MapasConductancia                       = evalin('base','MapasConductancia');

InfoStruct.DistanciaFourierColumnas     = evalin('base','DistanciaFourierColumnas');
InfoStruct.DistanciaFourierFilas        = evalin('base','DistanciaFourierFilas');
InfoStruct.DistanciaColumnas            = evalin('base','DistanciaColumnas');
InfoStruct.DistanciaFilas               = evalin('base','DistanciaFilas');
InfoStruct.Energia                      = evalin('base','Energia');
InfoStruct.TamanhoRealColumnas          = evalin('base','TamanhoRealColumnas');
InfoStruct.TamanhoRealFilas             = evalin('base','TamanhoRealFilas');
InfoStruct.ParametroRedColumnas         = evalin('base','ParametroRedColumnas');
InfoStruct.ParametroRedFilas            = evalin('base','ParametroRedFilas');
InfoStruct.MatrizCorriente              = evalin('base','MatrizCorriente');
InfoStruct.MatrizNormalizada            = evalin('base','MatrizNormalizada');
InfoStruct.PuntosDerivada               = evalin('base','PuntosDerivada');
InfoStruct.Voltaje                      = evalin('base','Voltaje');
InfoStruct.Bias                         = InfoStruct.Voltaje(1);
InfoStruct.Colormap                     = bone;

%Pasamos 'Transformadas' y 'MapasConductancia' a una cell mejor
%estructurada
MapasConductanciaNuevo = cell(1,length(InfoStruct.Energia));
TransformadasNuevo = cell(1,length(InfoStruct.Energia));
for k=1:length(InfoStruct.Energia)
    MapasConductanciaNuevo{k} = MapasConductancia{k};
    TransformadasNuevo{k} = Transformadas{k};
end
InfoStruct.MapasConductancia = MapasConductanciaNuevo;
InfoStruct.Transformadas = TransformadasNuevo;


% %save([FilePath, 'infostruct.mat'], 'InfoStruct');
[SaveFolder] = uigetdir(SaveFolder,'Save InfoStruct');
save([SaveFolder '\infostruct.mat'], 'InfoStruct');
msgbox('InfoStruct succesfully saved.','You are amazing','help')
end