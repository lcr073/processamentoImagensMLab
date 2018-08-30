function [vec] = histogramAcumulado(histOrig)

    % Vetor do histograma acumulado
    HistAcul = uint8.empty(256,0);
    for a = 1:size(HistAcul,1)
        HistAcul(a) = 0 ;
    end
    
    % Variavel que vai somando
    valSoma = 0;
    
    % Realizar soma dos vetores do vetor e ir colocando nas posicoes
    for vetInd = 1:size(HistAcul,2)
        valSoma = valSoma + histOrig(vetInd);
        HistAcul(vetInd) = valSoma;
    end   
          assignin('base','HistogramaAcul',HistAcul)
end