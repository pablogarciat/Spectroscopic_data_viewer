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
axis([0 1 min(InfoStruct.Energia) max(InfoStruct.Energia)]);
% axis([0 1 -85 85]);
b=gca;
b.Colormap = parula;
b.YDir='normal';
b.YLabel.String = '\fontsize{15} Energy (meV)';
b.XLabel.String = '\fontsize{15} k_{diag}';
b.LineWidth = 2;
b.FontWeight = 'bold';
% b.Position = b.OuterPosition;
% b.CLim=[minimo maximo];
%b.CLim=[min(min(Perfiles)) max(max(Perfiles))];
%colormap gray
end