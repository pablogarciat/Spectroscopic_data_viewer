function horizontalProfile(Info)
%LineasPromedio = 3;
% if rem(length(Info.DistanciaColumnas),2)
%     LongitudPerfil = length(Info.DistanciaColumnas)+1; %Poner ese +1 sólo si se ha ajustado el (0,0) previamente en QPIStudy.m
% else
%     LongitudPerfil = length(Info.DistanciaColumnas);
% end
LongitudPerfil = length(Info.DistanciaFourierColumnas);
Perfiles = zeros(length(Info.Energia),LongitudPerfil);
%Perfiles2 = zeros(length(Energia),LongitudPerfil);

for k=1:length(Info.Energia)
    Perfiles(k,:) = Info.Transformadas{k}(length(Info.DistanciaColumnas)/2+1,:)';
    %Perfiles2(k,:) = TransformadasSimetrizadas{k}(:,1+Filas/2);
    %Perfiles(k,1:LongitudPerfil-1)= diff(Perfiles(k,:));
end

% mediaTotal = mean(mean(Perfiles));
% FlattenMatrix=Perfiles;
% for i = 1:length(Perfiles(:,1))
%                FlattenMatrix(:,i) = FlattenMatrix(:,i) - (mean(FlattenMatrix(:,i)) - mediaTotal);
% end
% PerfilesPromedio = (Perfiles + Perfiles2)/2;
% PerfilesFlatten=Flatten(Perfiles,[1,1]);

a=figure;
%surf((ParametroRed/TamanhoReal)*(1:LongitudPerfil-1),Energia,Perfiles(:,1:LongitudPerfil-1))
imagesc(Info.DistanciaFourierColumnas*2*Info.ParametroRedFilas,Info.Energia,Perfiles);
axis([-1/(2*Info.ParametroRedColumnas) 1/(2*Info.ParametroRedColumnas) min(Info.Energia) max(Info.Energia)]);
% axis([0 1 min(Info.Energia) max(Info.Energia)]);
%axis([0 1 -85 85]);
b=gca;
b.Colormap = hot;
b.YDir='normal';
b.YLabel.String = '\fontsize{15} Energy (meV)';
b.XLabel.String = '\fontsize{15} k_{y} (\pi/b)';
b.LineWidth = 2;
b.FontWeight = 'bold';
title('Horizontal profile');
% b.Position = b.OuterPosition;
%b.CLim=[0 0.15];
%b.CLim=[min(min(Perfiles)) max(max(Perfiles))];
%colormap gray
    
end