function imgReduz = reduzImgMetade(imgOrig,freqCorte)

       % Convertendo imagem para escala de cinza
        imgOrigG = rgb2gray(imgOrig);
       % imgOrigG = imgOrig;
       
       % Aplicando filtro passa baixa para tornar a redu��o melhor
       imgFilt = AplicaFPB(imgOrig, freqCorte);
       
       % Garantindo so a parte real
       imgOrigG = real(imgFilt);
       
       % Monta uma "imagem" do tamanho igual metade a original
       largImgOrig = size(imgOrigG,1);
       altImgOrig = size(imgOrigG,2);

       % Gerando indice da imagem reduzida
       linhaReduz = 1;
       colReduz = 1;
       
       % Gerando a imagem reduzida "zerada"
       imgReduz = zeros(largImgOrig / 2, altImgOrig/2); 
       
       % for definimos o valorInicial:passo:valorFinal
       for linhaOrig = 1:2:largImgOrig
           for colOrig = 1:2:altImgOrig
                imgReduz(linhaReduz,colReduz) = imgOrigG(linhaOrig,colOrig);
                colReduz = colReduz + 1;
           end
           colReduz = 1;
           linhaReduz = linhaReduz + 1;
       end
       
         % manda o resultado para o Workspace
          assignin('base','imgReduzida3',imgReduz)
        %  plot(funcTransf)
end
