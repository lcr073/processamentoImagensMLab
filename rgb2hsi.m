% function [saida] = nomeFunc(entrada) end
function [img] = rgb2hsi(ImgR)
    % Converte o RGB em HSI
    img = rgb2hsv(ImgR);
    % Salvando no workspace a imagem
    assignin('base','ImagemHSI',img)    
    
    image(img)
end
