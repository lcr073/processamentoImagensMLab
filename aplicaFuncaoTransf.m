function [vec] = aplicaFuncaoTransf(img, ft)       
       % Varre as linhas
       for linhaImg = 1:size(img,1)
           % Varre as colunas
           for colunaImg = 1:size(img,2)
               % troca o valor de intensidade de cinza daquele pixel pela
               % intensidade mapeada na funcao de transferencia
               img(linhaImg,colunaImg) = ft(img(linhaImg,colunaImg) + 1);
           end 
       end    
            % Deixar janela aberta, para rodar em escala de cinza com o
            % mapa de cores correto
            colormap(gray(256));       
          assignin('base','ImgTransf',img)
end
