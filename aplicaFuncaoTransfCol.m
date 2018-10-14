function [vec] = aplicaFuncaoTransfCol(img, ft, canal)       
% Sendo canal 1 - Vermelho
% 2 - Verde
% 3 - Azul
       % Varre as linhas
       for linhaImg = 1:size(img,1)
           % Varre as colunas
           for colunaImg = 1:size(img,2)
               % troca o valor de intensidade de cinza daquele pixel pela
               % intensidade mapeada na funcao de transferencia
               img(linhaImg,colunaImg,canal) = ft(img(linhaImg,colunaImg,canal) + 1);
           end 
       end    
            % Deixar janela aberta, para rodar em escala de cinza com o
            % mapa de cores correto
            %colormap(gray(256));       
          assignin('base',strcat('ImgTransf',num2str(canal)),img)
end
