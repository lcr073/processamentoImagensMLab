function [img] = Write2Disk(imgIn, nameImgOut)
    % Obtem a imagem do workspace atraves do nome
    VarImg = evalin('base',imgIn);
    % Grava no disco a imagem e com o nome
    imwrite(VarImg,nameImgOut)
end