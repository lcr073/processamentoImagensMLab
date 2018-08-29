% function [saida] = nomeFunc(entrada) end
function [img] = readFromFileCol(pathImg)
    % Abrindo imagem
    img = imread(pathImg)
    assignin('base','ImagemCol',img)
end
