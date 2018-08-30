% function [saida] = nomeFunc(entrada) end
function [img] = readFromFileGrey(pathImg)
    % Abrindo imagem
    temp = imread(pathImg);
    % Converte o RGB em escala de cinza
    img = rgb2gray(temp);
    % mudando esquema de cores para nao aparecer azul e amarelo
    colormap(gray(256));
    % Salvando no workspace a imagem
    assignin('base','ImagemPB',img)    
end
