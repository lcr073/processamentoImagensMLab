function [vec] = Multiplica(FFTrect, FFTquad)
       % Definindo um vetor de 256 posicoes para ser a funcao de
       % transferencia
      
        FFTrect = FFTrect .* FFTquad;        
        %for a = 1:size(funcTransf,1)
         %   for b = 1:size(funcTransf,2)
          %      FFTrect(a,b) = FFTrect(a,b) .* FFTquad(a,b);
%            end
%        end
       
            % plot para exibir a funcao de transferencia
          assignin('base','quadMult',FFTrect)
end
