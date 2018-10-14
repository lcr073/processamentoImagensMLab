% function [saida] = nomeFunc(entrada) end
function [fftABS] = ABSFFT(img)
    % Transformando em escala de cinza
    %imgPB = rgb2gray(img);
    
    % Fazendo a transformada de Fourier
    FFTImg = fft2(img);
    
    % Fazendo o shift para centralizar
    Transl = fftshift(FFTImg);
    
    % Pegando o modulo da transformada
    fftABS = abs(Transl);
    
    % Mudando mapa de cores para nao ficar azul e amarelo
    colormap(gray(256));

    assignin('base','fftABS',fftABS)    
    % Exibindo imagem
    imagesc(fftABS);
    
    
end
