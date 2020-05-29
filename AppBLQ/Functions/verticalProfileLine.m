function verticalProfileLine(Info)
%LineasPromedio = 3;
% if rem(length(Info.DistanciaFilas),2)
%     LongitudPerfil = length(Info.DistanciaFilas)+1; %Poner ese +1 sólo si se ha ajustado el (0,0) previamente con adjustZero
% else
%     LongitudPerfil = length(Info.DistanciaFilas);
% end
LongitudPerfil = length(Info.DistanciaFourierFilas);

Perfiles = zeros(length(Info.Energia),LongitudPerfil);
%Perfiles2 = zeros(length(Energia),LongitudPerfil);

for k=1:length(Info.Energia)
    Perfiles(k,:) = Info.Transformadas{k}(:,floor(LongitudPerfil/2)+1);
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
k = 11;
% a = Perfiles(k,:)
% b = Info.DistanciaFourierFilas
plot(Info.DistanciaFourierFilas,Perfiles(k,:))

% imagesc(Info.DistanciaFourierFilas*2*Info.ParametroRedFilas,Info.Energia,Perfiles);
% axis([0 1 min(Info.Energia) max(Info.Energia)]);


b=gca;
b.XLim = [0, 1/(2*Info.ParametroRedFilas)];
% b.Colormap = parula;
% b.YDir='normal';
b.YLabel.String = '\fontsize{15} FFT Intensity (a.u.)';
b.XLabel.String = '\fontsize{15} k_{x} (\pi/a)';
b.LineWidth = 2;
b.FontWeight = 'bold';
title([num2str(Info.Energia(k)) ' mV'])
% b.Position = b.OuterPosition;
%b.CLim=[0 0.15];
%b.CLim=[min(min(Perfiles)) max(max(Perfiles))];
%colormap gray
    
end