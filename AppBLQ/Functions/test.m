function test

a = ChooseMatrixApp;
uiwait(a.UIFigure)

eleccionMatrices = evalin('base','eleccionMatrices')
evalin ('base','clear eleccionMatrices')
end