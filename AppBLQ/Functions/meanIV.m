function meanIV(Info)
Filas = length(Info.DistanciaFilas);
Columnas = length(Info.DistanciaColumnas);
PuntosIV = length(Info.Voltaje);

curvaCorriente = zeros(PuntosIV,2);
curvaCorriente(:,1) = Info.Voltaje;

for k=1:PuntosIV
    Matriz3DCorriente(:,:,k) = reshape(Info.MatrizCorriente(k,:),Filas,Columnas);
    curvaCorriente(k,2) = mean(mean(Matriz3DCorriente(:,:,k)));
end

%Plot current
figure (8983)
plot(Info.Voltaje,curvaCorriente(:,2))

a=gca;
% a.XLim = [-95 95];
a.Children.LineWidth = 2;
a.Children.Color = [0 0 0];
a.FontWeight = 'bold';
a.LineWidth = 2;
a.XColor = [0 0 0];
a.YColor = [0 0 0];
a.XLabel.String = 'Energy (meV)';
a.YLabel.String = 'Intensity (nA)';

assignin('base','curvaCorriente',curvaCorriente);
end