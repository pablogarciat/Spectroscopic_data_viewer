function meanConductance(Info)
Filas = length(Info.DistanciaFilas);
Columnas = length(Info.DistanciaColumnas);
PuntosIV = length(Info.Voltaje);

for k=1:PuntosIV
    Matriz3D(:,:,k) = reshape(Info.MatrizNormalizada(k,:),Filas,Columnas);
%     Matriz3D(:,:,k) = Matriz3D(:,:,k)';
%     Matriz3DRecortada(:,:,k) = Matriz3D(248:503,108:363,k);
%     MatrizNormalizadaRecortada (k,:) = reshape(Matriz3DRecortada(:,:,k),1,length(Matriz3DRecortada)^2);
    curva(k) = mean(mean(Matriz3D(:,:,k)));
end

curva = curva*1e8;

figure (8984)
plot(Info.Voltaje(1+Info.PuntosDerivada:length(Info.Voltaje)-Info.PuntosDerivada)...
    ,curva(1+Info.PuntosDerivada:length(Info.Voltaje)-Info.PuntosDerivada))
maximo = abs(Info.Energia(1));
plotPoints = ceil(maximo*Info.PuntosIV/Info.Bias);
% plot(Info.Voltaje(Info.PuntosIV/2-round(plotPoints/2):Info.PuntosIV/2+round(plotPoints/2)),...
%     curva(Info.PuntosIV/2-round(plotPoints/2):Info.PuntosIV/2+round(plotPoints/2)));

a=gca;
% a.XLim = [-95 95];
a.Children.LineWidth = 2;
a.Children.Color = [0 0 0];
a.FontWeight = 'bold';
a.LineWidth = 2;
a.XColor = [0 0 0];
a.YColor = [0 0 0];
a.XLabel.String = 'Energy (meV)';
a.YLabel.String = 'Conductance (nS)';
end