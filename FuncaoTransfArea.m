function [vec] = FuncaoTransfArea(img)
    % Cria matriz de filtro 3x3
    % Filtro passa baixa
    filtro33 = 1/9*[1 1 1;1 1 1;1 1 1] ;
    % Filtro passa alta
    %filtro33 = [-1 -1 -1;-1 8 -1;-1 -1 -1] ;
    
        tempFiltro = zeros(size(img,1),size(img,2));
        for a = 1:size(tempFiltro,1)
            for b = 1:size(tempFiltro,2)
                tempFiltro(1,b) = 0 ;
            end
        end
    
    % Para um pixel x,y usar (x+1)(y)|(x-1)(y)|(x)(y+1)|(x)(y-1)
       % Varre as linhas
       for linhaImg = 1:size(img,1)
           % Varre as colunas
           for colunaImg = 1:size(img,2)
               for linhaFiltro = 1:size(filtro33,1)
                  for colunaFiltro = 1:size(filtro33,1)
                        % define bordas
                        if (linhaImg -1) < 1 && (colunaImg -1) < 1
                            tempFiltro(linhaImg,colunaImg) = tempFiltro(linhaImg,colunaImg) + (filtro33(linhaFiltro,colunaFiltro) * img(size(img,1),size(img,2)));                                                        
                        % passou para o x negativo ou = 0
                        elseif(linhaImg - 1) < 1
                            tempFiltro(linhaImg,colunaImg) = tempFiltro(linhaImg,colunaImg) + (filtro33(linhaFiltro,colunaFiltro) * img(size(img,1),colunaImg -1));                         
                        % passou para o y negativo ou = 0    
                        elseif (colunaImg -1) < 1
                            tempFiltro(linhaImg,colunaImg) = tempFiltro(linhaImg,colunaImg) + (filtro33(linhaFiltro,colunaFiltro) * img(linhaImg - 1,size(img,2))) ;                                                           
                        % passou o x o tamanho da imagem
                        elseif (linhaImg -1) > size(img,1)
                            tempFiltro(linhaImg,colunaImg) = tempFiltro(linhaImg,colunaImg) + (filtro33(linhaFiltro,colunaFiltro) * img(1,colunaImg -1)) ;                                                                                           
                        % passou o y o tamanho da imagem       
                        elseif (colunaImg - 1) > size(img,2)
                            tempFiltro(linhaImg,colunaImg) = tempFiltro(linhaImg,colunaImg) + (filtro33(linhaFiltro,colunaFiltro) * img(linhaImg - 1,1));                                                                                                                            
                        else
                            tempFiltro(linhaImg,colunaImg) = tempFiltro(linhaImg,colunaImg) + (filtro33(linhaFiltro,colunaFiltro) * img(linhaImg - 1,colunaImg -1))  ;                          
                        end

                  end
               end
               

                
           end 
       end    
            % Deixar janela aberta, para rodar em escala de cinza com o
            % mapa de cores correto
            colormap(gray(256));       
            assignin('base','ImgFiltro',tempFiltro)
end
