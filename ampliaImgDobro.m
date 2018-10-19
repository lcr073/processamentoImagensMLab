function imgAmpl = ampliaImgDobro(imgOrig,freqCorte,aumento)

       % Convertendo imagem para escala de cinza
        imgOrigG = rgb2gray(imgOrig);
       % imgOrigG = imgOrig;
              
       % Monta uma "imagem" do tamanho igual dobro da original
       altImgOrig = size(imgOrigG,1);
       LargImgOrig = size(imgOrigG,2);

       % Gerando indice da imagem reduzida
       linhaOrig = 1;
       colOrig = 1;
       
       % Gerando a imagem reduzida "zerada"
       imgAmpl = zeros(altImgOrig * aumento, LargImgOrig * aumento); 
       
       % for definimos o valorInicial:passo:valorFinal
       for linhaImg = 1:aumento:altImgOrig * aumento 
          for colImg = 1:aumento:LargImgOrig * aumento
            imgAmpl(linhaImg, colImg) = imgOrig(linhaOrig, colOrig);
           %imgAmpl(linhaImg, colImg) = imgOrig(linhaImg, colImg);
            colOrig = colOrig + 1;                       
          end
          colOrig = 1;
          linhaOrig = linhaOrig + 1; 

       end
       
       % Envia imagem ampliada sem passar o filtro
         assignin('base','imgAmpl',imgAmpl)
       
       % Aplicando filtro passa baixa para tornar a redução melhor
       imgFilt = AplicaFPB(imgAmpl, freqCorte);
       
       % Garantindo so a parte real
       imgFiltR = real(imgFilt);
       
         % manda o resultado para o Workspace
          assignin('base','imgFiltAmpl',imgFiltR)
        %  plot(funcTransf)
end
