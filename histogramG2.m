function [vec] = histogramG2(img)
    %Criando vetor vazio
    
    imagem = img
    Vec = uint32.empty(256,0)
    for a = 1:size(Vec,1)
       Vec(a) = 0 ;
    end
    
       % Varre as linhas
       for linhaImg = 1:size(img,1)
           % Varre as colunas
           for colunaImg = 1:size(img,2)
               % axis tight ajusta os eixos para imagem
               %imhist(lightwall1), axis tight
               %if(img(linhaImg,colunaImg) < 20)
                %   Vec(img(linhaImg,colunaImg) + 1) = 255;
                    
                %    img(linhaImg,colunaImg) = 255;
               %else
                    Vec(img(linhaImg,colunaImg) + 1) = Vec(img(linhaImg,colunaImg) + 1) + 1;
              % end
              % img(linhaImg,colunaImg)
           end 
       end    
            %image(img)
          assignin('base','HistogramaG',Vec)
end