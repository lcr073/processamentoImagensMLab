% function [saida] = nomeFunc(entrada) end
function [img] = filtro(Img)
    % Cria matriz de filtro 3x3
    filtro33 = [1/9 1/9 1/9;1/9 1/9 1/9;1/9 1/9 1/9] ;
      %filtro33 = [-1 -1 -1;-1 8 -1;-1 -1 -1] ;
      
    %filtro = uint8(convn(Img,filtro33));
    filtro = convn(Img,filtro33);
   
    % Salvando no workspace a imagem
    assignin('base','ImagemFiltradaFPB',filtro)    
    %assignin('base','ImagemFiltradaFPA',filtro)        
    
   % image(img)
end
