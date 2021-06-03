function [CellFiltered] = gaussCoreSubstraction(Cell, Info, Sigma)

CellFiltered = Cell;

Columnas = length(Info.DistanciaFourierColumnas);
Filas = length(Info.DistanciaFourierFilas);

%Defino una Gaussiana con ancho menor que el de las cosas que nos
%   interesa ver. Sigma son los píxeles que podemos filtrar sin matar las
%   cosas que nos interesan.
% Sigma = 1;
x0 = floor(Columnas/2)+1;
y0 = floor(Filas/2)+1;
x = (1:1:Columnas)';
y = (1:1:Filas)';
GaussianFilter = ones(Filas,Columnas);

for i = 1:length(x)
    GaussianFilter(:,i) = exp(-((x(i)-x0)/(sqrt(2)*Sigma)).^2)*exp(-((y-y0)/(sqrt(2)*Sigma)).^2); 
end
MatrizFiltroFFT = 1-GaussianFilter;

for k=1:length(Info.Energia)
    CellFiltered{k} = Cell{k}.*MatrizFiltroFFT;
end
end



    
%     Sigma = 1;
%     x0 = floor(Columnas/2)+1;
%     	y0 = floor(Filas/2)+1;
%     x = (1:1:Columnas)';
%         y = (1:1:Filas)';
%     GaussianFilter = ones(Filas,Columnas);
% 
%     for i = 1:length(x)
%         GaussianFilter(:,i) = exp(-((x(i)-x0)/(sqrt(2)*Sigma)).^2)*exp(-((y-x0)/(sqrt(2)*Sigma)).^2); 
%     end
%     MatrizFiltroFFT1 = 1-GaussianFilter;