% function [saida] = nomeFunc(entrada) end
function [ImagemAnt] = IFFT(FFT)
    antiShift = ifftshift(FFT);

    % Fazendo a anti transformada de Fourier
    Img = ifft2(antiShift);
    
    % Mudando mapa de cores para nao ficar azul e amarelo
    colormap(gray(256));

    assignin('base','ImgResult',Img)    
    % Exibindo imagem
    imagesc(Img);
    
    
end
