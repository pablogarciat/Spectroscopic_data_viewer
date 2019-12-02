function [Struct] = showMaps(App, Struct, k)

% Energia                      = Struct.Energia;
DistanciaColumnas            = Struct.DistanciaColumnas;
DistanciaFilas               = Struct.DistanciaFilas;
DistanciaFourierFilas        = Struct.DistanciaFourierFilas;
DistanciaFourierColumnas     = Struct.DistanciaFourierColumnas;
% TamanhoRealFilas             = Struct.TamanhoRealFilas;
% TamanhoRealColumnas          = Struct.TamanhoRealColumnas;
% ParametroRedColumnas         = Struct.ParametroRedColumnas;
% ParametroRedFilas            = Struct.ParametroRedFilas;
% Voltaje                      = Struct.Voltaje;
% MatrizNormalizada            = Struct.MatrizNormalizada;
Filas                        = Struct.Filas;
Columnas                     = Struct.Columnas;
% MaxCorteConductancia         = Struct.MaxCorteConductancia;
% MinCorteConductancia         = Struct.MinCorteConductancia;
% SaveFolder                   = Struct.SaveFolder;
% MatrizCorriente              = Struct.MatrizCorriente;
MapasConductancia            = Struct.MapasConductancia;
Transformadas                = Struct.Transformadas;
% PuntosDerivada               = Struct.PuntosDerivada;

%Iniciacion de la figura en el espacio real
cla (App.RealAxes); %Clear axes
    
ImagenReal = imagesc(App.RealAxes,DistanciaColumnas,DistanciaFilas,MapasConductancia{k});
App.RealAxes.YDir = 'normal';
ImagenReal.HitTest = 'Off';
axis(App.RealAxes,'square');
App.RealAxes.Box = 'On';
App.RealAxes.XLim = [min(DistanciaColumnas) max(DistanciaColumnas)];
App.RealAxes.YLim = [min(DistanciaFilas) max(DistanciaFilas)];
App.RealAxes.Colormap = feval(App.RealColormapDropDown.Value);

Ratio = (App.RealAxes.XLim(2) - App.RealAxes.XLim(1))/...
(App.RealAxes.YLim(2) - App.RealAxes.YLim(1));
App.RealAxes.DataAspectRatio = [100,100*Ratio,1];

if ~App.RealLockContrastCheckBox.Value
    App.RealMinSlider.Limits = [min(min(MapasConductancia{k})) max(max(MapasConductancia{k}))];
    App.RealMaxSlider.Limits = [min(min(MapasConductancia{k})) max(max(MapasConductancia{k}))];
%     App.RealMinSlider.Value = App.RealMinSlider.Limits(1);
%     App.RealMaxSlider.Value = App.RealMaxSlider.Limits(2);
end

App.RealAxes.CLim = [App.RealMinSlider.Value App.RealMaxSlider.Value];

%Iniciacion de la figura en espacio reciproco
cla(App.FFTAxes); %Clear axes

ImagenFourier = imagesc(App.FFTAxes, DistanciaFourierColumnas,DistanciaFourierFilas,Transformadas{k});
App.FFTAxes.YDir = 'normal';
ImagenFourier.HitTest = 'Off';
App.FFTAxes.Box = 'on';
axis(App.FFTAxes,'square');
App.FFTAxes.XLim = [min(DistanciaFourierColumnas) max(DistanciaFourierColumnas)];
App.FFTAxes.YLim = [min(DistanciaFourierFilas) max(DistanciaFourierFilas)];
App.FFTAxes.Colormap = feval(App.FFTColormapDropDown.Value);

Ratio = (App.FFTAxes.XLim(2) - App.FFTAxes.XLim(1))/...
(App.FFTAxes.YLim(2) - App.FFTAxes.YLim(1));
App.FFTAxes.DataAspectRatio = [100,100*Ratio,1];

% Quito el punto central para calcular el máximo de las transformadas
TransformadasAUX = Transformadas{k};
TransformadasAUX(Filas/2+1, Columnas/2+1) = 0;

if ~App.RealLockContrastCheckBox.Value
    App.FFTMinSlider.Limits = [min(min(Transformadas{k})) max(max(TransformadasAUX))];
    App.FFTMaxSlider.Limits = [min(min(Transformadas{k})) max(max(TransformadasAUX))];
%     App.FFTMinSlider.Value = App.FFTMinSlider.Limits(1);
%     App.FFTMaxSlider.Value = App.FFTMaxSlider.Limits(2);
end

App.FFTAxes.CLim = [App.FFTMinSlider.Value App.FFTMaxSlider.Value];
clear TransformadasAUX

end