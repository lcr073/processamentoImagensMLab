% function [saida] = nomeFunc(entrada) end
function [img] = normalizaFiltroAula(imgPosFiltro)
           % Varre as linhas
           
           minImg = min(imgPosFiltro(:));
           maxImg = max(imgPosFiltro(:));
           
           for linhaImg = 1:size(imgPosFiltro,1)
           % Varre as colunas
           for colunaImg = 1:size(imgPosFiltro,2)
               % troca o valor de intensidade de cinza daquele pixel pela
               % intensidade mapeada na funcao de transferencia
               imgPosFiltro(linhaImg,colunaImg) = imgPosFiltro(linhaImg,colunaImg) - minImg;
           end 
           end  
    
              for linhaImg = 1:size(imgPosFiltro,1)
           % Varre as colunas
           for colunaImg = 1:size(imgPosFiltro,2)
               % troca o valor de intensidade de cinza daquele pixel pela
               % intensidade mapeada na funcao de transferencia
               imgPosFiltro(linhaImg,colunaImg) = imgPosFiltro(linhaImg,colunaImg) / maxImg * 255;
           end 
       end  
       
    % Salvando no workspace a imagem
    assignin('base','ImagemNormalizada2',imgPosFiltro)    
    
   % image(img)
end
