function [vec] = FuncaoTransf()
       % Definindo um vetor de 256 posicoes para ser a funcao de
       % transferencia
        funcTransf = uint8.empty(256,0);
        for a = 1:size(funcTransf,1)
            funcTransf(a) = 0 ;
        end
       
        for b = 1:size(funcTransf,2)
            % funcao de transferencia para inverter imagem
            funcTransf(b) = -1* double(b) + 255 ;
        end
            % plot para exibir a funcao de transferencia
          assignin('base','funcTransf',funcTransf)
          plot(funcTransf)
end
