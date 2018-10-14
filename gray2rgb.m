% function [saida] = nomeFunc(entrada) end
function [img] = gray2rgb(imgGray)
        [linha, coluna] = size(imgGray);
        rgbMat = zeros(linha,coluna,3);        
        for canal = 1:3
            rgbMat(:,:,canal) = imgGray(:,:,1);
        end
        
        Imagem=uint8(rgbMat);
        
     % Salvando no workspace a imagem
    assignin('base','ImagemRGB',Imagem)    
end
