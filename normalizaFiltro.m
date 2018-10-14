% function [saida] = nomeFunc(entrada) end
function [img] = normalizaFiltro(imgPosFiltro)
           % Varre as linhas
           for linhaImg = 1:size(imgPosFiltro,1)
           % Varre as colunas
           for colunaImg = 1:size(imgPosFiltro,2)
               % troca o valor de intensidade de cinza daquele pixel pela
               % intensidade mapeada na funcao de transferencia
               imgPosFiltro(linhaImg,colunaImg) = (imgPosFiltro(linhaImg,colunaImg) * 255)/ max(imgPosFiltro(:));
           end 
       end  
    
   
    % Salvando no workspace a imagem
    assignin('base','ImagemNormalizada',filtro)    
    
   % image(img)
end
