function [CellFiltered] = squareFilter(Cell, Info, NPoints)

CellFiltered = Cell;

for k=1:length(Info.Energia)
    CellFiltered{k} = conv2(Cell{k}, ones(2*NPoints+1)/((2*NPoints+1)^2), 'same');
end
end