function [CellRemoved] = RemoveCentralLine(Cell, Info, V, H)
% V y H son variables lógicas
Columnas = length(Info.DistanciaFourierColumnas);
Filas    = length(Info.DistanciaFourierFilas);

CellRemoved = Cell;
for k=1:length(Info.Energia)
    %---------
    %Vertical
    %---------
    if V
        for i=1:Columnas
           CellRemoved{k}(i,(Columnas/2)+1) = mean([Cell{k}(i,Columnas/2),...
                Cell{k}(i,(Columnas/2)+2)]);
        end
    end
    %----------
    %Horizontal
    %----------
    if H
        for j=1:Filas
            CellRemoved{k}((Filas/2)+1,j) = mean([Cell{k}(Filas/2,j),...
                Cell{k}((Filas/2)+2,j)]);
        end
    end
end