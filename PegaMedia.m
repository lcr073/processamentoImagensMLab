% Recebe o parametro a ser aplicado no fourieer
function [vec] = PegaMedia(img)      
       soma = int64(0);
       
       % Varre as linhas
       for linhaImg = 1:size(img,1)
           % Varre as colunas
           for colunaImg = 1:size(img,2)
               soma = soma + int64(img(linhaImg,colunaImg));
           end 
       end    
       
           valMedia = soma / (size(img,1) * size(img,2));
            
          assignin('base','mediaImg2',valMedia)
end
