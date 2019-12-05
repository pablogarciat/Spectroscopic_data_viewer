function profileReal(ax, Struct, k)
% global DistanciaColumnas
% global DistanciaFilas
% global Voltaje
% global MatrizNormalizada
% global MapasConductanciaEqualizados
% global SaveFolder

% Filas = Struct.Filas;
% Columnas = Struct.Columnas;
Voltaje = Struct.Voltaje;
MapasConductancia = Struct.MapasConductancia;
DistanciaFilas = Struct.DistanciaFilas;
DistanciaColumnas = Struct.DistanciaColumnas;
SaveFolder = Struct.SaveFolder;
MatrizNormalizada = Struct.MatrizNormalizada;

if ~strcmp(ax.Children(1).Tag,'lineProfile')
    return
else
    Position = ax.Children(1).Position;
    XinicioFinal = Position(:,1);
    YinicioFinal = Position(:,2);
    % k = round(handles.energySlider.Value);
    [DistanciaPerfil,PerfilActual, CurvasPerfil] = perfilIVPA_v2(MapasConductancia{k}, Voltaje,MatrizNormalizada, DistanciaColumnas, DistanciaFilas,SaveFolder,XinicioFinal,YinicioFinal);

    %   REPRESENTACION PERFIL
    % ----------------------------
    FigPerfil = figure(233);
        FigPerfil.Color = [1 1 1];
        EjePerfil = axes('Parent',FigPerfil,'FontSize',14,'FontName','Arial');
        hold(EjePerfil,'on');
            plot(DistanciaPerfil,PerfilActual,'k--','Parent',EjePerfil);
            scatter(DistanciaPerfil,PerfilActual,100,'Filled','CData',PerfilActual,...
                'Parent',EjePerfil);
        ylabel(EjePerfil,'Normalized conductance','FontSize',16);
        xlabel(EjePerfil,'Distance (nm)','FontSize',16);
        box on;
        hold(EjePerfil,'off');

%     FigSurfPerfil = figure('Color',[1 1 1]);
%         FigSurfPerfil.Position = [367   286   727   590];
%         EjeSurfPerfil = axes('Parent',FigSurfPerfil,'FontSize',16,'FontName','Arial',...
%             'Position',[0.158351084541563 0.1952 0.651099711483654 0.769800000000001],...
%             'CameraPosition',[0 0 5],...
%             'YTick',[]);
%         hold(EjeSurfPerfil,'on');
%         surf(Voltaje,DistanciaPerfil,CurvasPerfil','Parent',EjeSurfPerfil,'MeshStyle','row',...
%             'FaceColor','interp');
%         xlabel(EjeSurfPerfil,'Bias voltage (mV)','FontSize',18,'FontName','Arial');
%             EjeSurfPerfil.XLim = [min(Voltaje) max(Voltaje)];
%         ylabel(EjeSurfPerfil,'Distance (nm)','FontSize',18,'FontName','Arial','Rotation',90);
%             EjeSurfPerfil.YLim = [min(DistanciaPerfil), max(DistanciaPerfil)];
%         EjeSurfPerfil.ZTick = [];
%         hold(EjeSurfPerfil,'off');
end
end