function imgFPA = GeraImgFPA(largImg,altImg,freqCorte)
       % Monta uma "imagem" de filtro passa baixa com a mesma largura e altura da
       % imagem original
       
       % Definindo um vetor de 256 posicoes para ser a funcao de
       % transferencia
       % eq circunferencia
       % (x-a)² + (y-b)² = r ² {a,b centro}
       
        funcTransf = zeros(largImg,altImg);
        a = largImg / 2;
        b = altImg / 2;
        
        for linha = 1:size(funcTransf,1)
            for coluna = 1:size(funcTransf,2)
                
                funcTransf(linha,coluna) = 0 ; 
                
                if (((linha - a)^2) + ((coluna - b)^2)) >= (freqCorte^2)
                    funcTransf(linha,coluna) = 255;
                end
            end
        end
       
            % plot para exibir a funcao de transferencia
          assignin('base','imgFPA',funcTransf)
        %  plot(funcTransf)
        
        % Return dessa funcao
        imgFPA = funcTransf;
end
