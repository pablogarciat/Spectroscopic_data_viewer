function initCell(app, Cell, flag)
if flag %Real
%     minVector = zeros(length(Cell),1);
%     maxVector = zeros(length(Cell),1);
    
    for i=1:length(Cell)
        minVector(i) = min(min(Cell{i}));
        maxVector(i) = max(max(Cell{i}));
    end
    
    minValue = min(minVector);
    maxValue = max(maxVector);
    
    app.MinSlider.Limits = [minValue maxValue];
    app.MaxSlider.Limits = [minValue maxValue];
else %FFT
%     minVector = zeros(length(Cell),1);
%     maxVector = zeros(length(Cell),1);
    
    [Filas, Columnas] = size(Cell{1});
    
%     minVector = zeros(1:length(Cell));
%     maxVector = zeros(1:length(Cell));
%     
    for i=1:length(Cell)
        Cell{i}(Filas/2+1, Columnas/2+1) = 0;
        minVector(i) = min(min(Cell{i}));
        maxVector(i) = max(max(Cell{i}));
    end
    
    minValue = min(minVector);
    maxValue = max(maxVector);
    
    app.MinSlider.Limits = [minValue maxValue];
    app.MaxSlider.Limits = [minValue maxValue];
end
end