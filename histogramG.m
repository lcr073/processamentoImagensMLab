function [vec] = histogramG(img)
    imhist(img);
    %Criando vetor vazio
    %Vec = uint8.empty(255,0)
    %for a = 1:size(Vec,1)
%       Vec(a) = 0 ;
%    end
    
    % Varrendo posicoes array
      %for i  = 1:size(Vec,1)
        % Reinicia 'valor' histograma para proximo cinza
%        HistFreqTemp = 0 ;         
        
       % Varre as linhas
%       for linhaImg = 1:size(img,1)
           % Varre as colunas
%           for colunaImg = 1:size(img,2)
               % Verifica se a intensidade e igual, soma
%               if i == img(linhaImg,colunaImg)
%                  HistFreqTemp = HistFreqTemp + 1
%                  Vec(i) = HistFreqTemp
%               end
%           end 
%       end
%      end    
%          assignin('base','HistogramaG',Vec)
end