function [vec] = exFuncTransfInversa(img)
       % Varre as linhas
       for linhaImg = 1:size(img,1)
           % Varre as colunas
           for colunaImg = 1:size(img,2)
               % valor da saida é igual a (-valor entrada) + 255
                img(linhaImg,colunaImg) = -1* double(img(linhaImg,colunaImg)) + 255;
           end 
       end    
            % Deixar janela aberta, para rodar em escala de cinza com o
            % mapa de cores correto
            colormap(gray(256));       
          assignin('base','ImgTransf',img)
end
