% Recebe o parametro a ser aplicado no fourieer
function [vec] = FuncaoTransfFFT(FFTABS, c)      
       % Varre as linhas
       for linhaImg = 1:size(FFTABS,1)
           % Varre as colunas
           for colunaImg = 1:size(FFTABS,2)
               % troca o valor de intensidade de cinza daquele pixel pela
               % intensidade mapeada na funcao de transferencia
               %FFTABS(linhaImg,colunaImg) = ft(FFTABS(linhaImg,colunaImg) + 1);
               FFTABS(linhaImg,colunaImg) = log(1 + c * FFTABS(linhaImg,colunaImg));
           end 
       end    
            % Deixar janela aberta, para rodar em escala de cinza com o
            % mapa de cores correto
            colormap(gray(256));       
          assignin('base','FFTtransf',FFTABS)
end
