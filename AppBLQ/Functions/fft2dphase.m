% Fase de la transformada de Fourier 2D
% Nota para mejor comprensión: RSI = Real Space Image

function PHASE = fft2dphase(RSI)% La entrada es una matriz con la imagen en el espacio real

    PHASE = fft2(RSI);        % Esta orden hace la transformada para una imagen 2D rutina de matlab
    PHASE = fftshift(PHASE);    % Pone la componente de frecuencia cero en el centro del espectro
    REAL=real(PHASE);
    IMAG=imag(PHASE);
    PHASE=atan(IMAG./REAL);
%     for i=1:size(RSI)
%         for j=1:size(RSI)
%             if PHASE(i,j)>0
%                 PHASE(i,j)=log((PHASE(i,j)+1)+1);
%             end
%             if PHASE(i,j)==0
%                 PHASE(i,j)=0;
%             end
%             if PHASE(i,j)<0
%                 PHASE(i,j)=-log((abs(PHASE(i,j))+1)+1);
%             end
%         end
%     end

%   FFT = mat2gray(FFT);    % Escala de grises (opcional)
end
