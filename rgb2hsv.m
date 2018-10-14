% function [saida] = nomeFunc(entrada) end
function [img] = rgb2hsv(ImgR)
    % Converte o RGB em HSV
    img = rgb2hsv(ImgR);
    % Salvando no workspace a imagem
    assignin('base','ImagemHSV',img)    
    
    image(img)
end
