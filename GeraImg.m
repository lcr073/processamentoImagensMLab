function [vec] = GeraImg()
       % Definindo um vetor de 256 posicoes para ser a funcao de
       % transferencia
       
        funcTransf = zeros(256,256);
        
        for a = 1:size(funcTransf,1)
            for b = 1:size(funcTransf,2)
                
                funcTransf(a,b) = 0 ; 
                
                if a >= 119 && a <= 138
                    if b>= 119 && b <= 138
                        funcTransf(a,b) = 255;
                    end
                end
            end
        end
       
            % plot para exibir a funcao de transferencia
          assignin('base','quad',funcTransf)
        %  plot(funcTransf)
end
