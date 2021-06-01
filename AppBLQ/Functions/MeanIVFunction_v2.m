function MeanIVFunction_v2(ax, Rectangulo, MatrizNormalizada, Voltaje, Columnas, Filas, DistanciaColumnas, flag)
Rectangulo1 = [Rectangulo(1)-DistanciaColumnas(1) Rectangulo(2)-DistanciaColumnas(1) (Rectangulo(3)) (Rectangulo(4))];
Rectangulo1 = Columnas.*Rectangulo1./(DistanciaColumnas(end)- DistanciaColumnas(1) );
Inicio = [round(Rectangulo1(1)), round(Rectangulo1(2))];
Final = [Inicio(1) + round(Rectangulo1(3)), Inicio(2) + round(Rectangulo1(4))];

m = 0;
Coordenadas = 0;
for i = 1:Columnas
    for j = 1:Filas
        if i>=Inicio(1) && j>=Inicio(2) && i<=Final(1) && j<=Final(2)
            m = m+1;

            Coordenadas(m) = sub2ind([Columnas, Filas], i, j);
        end
    end
end
mean = 0;

if length(Coordenadas)>1

for i = 1:length(Coordenadas)
        mean = mean + MatrizNormalizada(:,Coordenadas(i))/length(Coordenadas);
end
%assignin('base','mean',[Voltaje, mean])
% b=findobj('Name', 'mainFig');
if flag
    meanIVFig = figure(37289);
else
    meanIVFig = figure(37290);
end

if ~flag
    meanIVFig.CloseRequestFcn = 'kill_v2';
end

meanIVFig.Name = 'meanIVFig';

hold on
a=gca;
% a.ColorOrder = jet(50);
if ~flag
    a.ColorOrderIndex = ax.ColorOrderIndex;
else
    a.ColorOrderIndex = ax.ColorOrderIndex-1;
end

% plot(Voltaje(1+Info.PuntosDerivada:length(Info.Voltaje)-Info.PuntosDerivada), mean(1+Info.PuntosDerivada:length(Info.Voltaje)-Info.PuntosDerivada),'-','LineWidth',2)
plot(Voltaje, mean,'-','LineWidth',2)
if ~flag
    a.XLabel.String = '\fontsize{18} Voltage (mV)';
    % a.YLabel.String = 'Conductance(\muS)';
    a.YLabel.String = '\fontsize{18} Normalized conductance';
else
    a.XLabel.String = '\fontsize{18} Voltage (mV)';
    % a.YLabel.String = 'Conductance(\muS)';
    a.YLabel.String = '\fontsize{18} Current (nA)';
end
% a.Children.LineWidth = 2;
% a.Children.Color = [0 0 0];
a.FontWeight = 'bold';
a.LineWidth = 2;
a.FontName = 'Arial';
a.FontSize = 16;
a.XColor = [0 0 0];
a.YColor = [0 0 0];
a.Box = 'on';
a.TickLength(1) = 0.02;
%plot(Voltaje(5:60),curva(5:60))
%ylim([0 , 2])

curves = [Voltaje mean];

if ~isfield(meanIVFig.UserData, 'curves')
    meanIVFig.UserData.curves = curves;
else
    meanIVFig.UserData.curves = [meanIVFig.UserData.curves curves];
end
    
if ~flag
    uicontrol('Style', 'pushbutton', 'String', '<html>Curves to<br>Workspace',...
    'Position', [1 1 60 50], 'Callback', @(src,eventdata)curves2Workspace('meanConductanceRegion'));
else
    uicontrol('Style', 'pushbutton', 'String', '<html>Curves to<br>Workspace',...
    'Position', [1 1 60 50], 'Callback', @(src,eventdata)curves2Workspace('meanIVRegion'));
end

x1=Rectangulo(1);
y1=Rectangulo(2);
a1=Rectangulo(3);
b1=Rectangulo(4);

% b=findobj('Name', 'mainFig');
hold(ax, 'on');

if ~flag
    area = plot(ax,[x1 x1+a1 x1+a1 x1 x1], [y1 y1 y1+b1 y1+b1 y1],'LineWidth',2);
end

area.Tag = 'meanIVFig';
% rectangle('Position',Rectangulo,'EdgeColor','white')
end