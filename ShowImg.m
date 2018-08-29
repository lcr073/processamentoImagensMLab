function [img] = ShowImg(imgIn)
    % Obtem a imagem do workspace atraves do nome
    VarImg = evalin('base',imgIn);
    % Exibe a imagem
     image(VarImg)
end