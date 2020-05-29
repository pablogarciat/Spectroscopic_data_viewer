function [Info] = gapMap(Info,Range,Threshold,RangeMin,flag)
%flag = 0: barrido en X; flag = 1: barrido en Y;

Filas =  length(Info.DistanciaFilas);
Columnas = length(Info.DistanciaColumnas);

[~,NCurves] = size(Info.MatrizNormalizada);

VectorGap = zeros(1,NCurves);

% Range = 0.5; %mV
% Threshold = 1.5; %Para el ratio entre el máximo y el mínimo

Mask1 = find(Info.Voltaje > 0 & Info.Voltaje < Range);
Mask2 = find(Info.Voltaje < 0 & Info.Voltaje > -Range);

MaskMin = find(abs(Info.Voltaje) < RangeMin);

for i=1:NCurves    
    [Value1,Gap1] = max(Info.MatrizNormalizada(Mask1,i));
    [Value2,Gap2] = max(Info.MatrizNormalizada(Mask2,i));
    
    [Value3,~] = min(Info.MatrizNormalizada(MaskMin,i));
    
    Ratio = (((Value1 + Value2)/2)-Value3)/abs(Value3);
    
    if Ratio < Threshold
        VectorGap(i) = 0;
    else
        VectorGap(i) = (abs(Info.Voltaje(Mask1(Gap1))) + abs(Info.Voltaje(Mask2(Gap2))))/2;
    end
end

MapaGap = reshape(VectorGap,[Columnas,Filas]);
MapaGap = MapaGap';

if flag %barrido en Y
    MapaGap = imrotate(MapaGap{k},-90);
    MapaGap = fliplr(MapaGap);
end

fig = figure;
imagesc(Info.DistanciaColumnas,Info.DistanciaFilas,MapaGap);
fig.Children.YDir = 'normal';
% fig.Children.CLim = CScale;
colormap jet
axis square

Info.MapaGap = MapaGap;
end