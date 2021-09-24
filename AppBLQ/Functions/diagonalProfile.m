function diagonalProfile(Info)
if rem(length(Info.DistanciaFilas),2)
    LongitudPerfil = length(Info.DistanciaFilas)+1; %Poner ese +1 sólo si se ha ajustado el (0,0) previamente en QPIStudy.m
else
    LongitudPerfil = length(Info.DistanciaFilas);
end

    Perfiles = zeros(length(Info.Energia),LongitudPerfil);

for k=1:length(Info.Energia)
    for i=1:LongitudPerfil
    Perfiles(k,i) = Info.Transformadas{k}(i,i);
    end
end

a=figure(54535);
imagesc(Info.DistanciaFourierFilas*2*Info.ParametroRedFilas,Info.Energia,Perfiles);
axis([-1 1 min(Info.Energia) max(Info.Energia)]);
% axis([0 1 -85 85]);
b=gca;
b.Colormap = Info.Colormap;
b.YDir='normal';
b.XColor = [0 0 0];
b.YColor = [0 0 0];
b.YLabel.String = '\fontsize{18} Energy (meV)';
% b.XLabel.String = '\fontsize{15} k_{x} (\pi/a)';
% b.XLabel.String = '\fontsize{18} q_{x} (nm^-^1)';
xlabel('\fontsize{18} q_{x} (\surd{2}\pi/a)');
b.LineWidth = 2;
b.FontSize = 14;
b.FontName = 'Arial';
b.FontWeight = 'bold';
b.TickDir = 'out';
% title('Diagonal profile')
% b.Position = b.OuterPosition;
% b.CLim=[minimo maximo];
%b.CLim=[min(min(Perfiles)) max(max(Perfiles))];
%colormap gray

b.XLim = [-1 1];
end