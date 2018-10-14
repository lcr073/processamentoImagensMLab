function [vec] = AplicaFPA(imgOrig, fCorte)
        
        % Convertendo imagem para escala de cinza
        imgOrig = rgb2gray(imgOrig);
        
        % Pega caracteristicas da imagem
        alt = size(imgOrig,1);
        larg = size(imgOrig,2);
        
        % Gera o filtro do tamanho da imagem
        imgFPA = GeraImgFPA(alt,larg,fCorte);
        assignin('base','Filtro',imgFPA)        
      
        % Faz a transformada de Fourier
        ImgFFT = fft2(imgOrig);
        
        % Faz o shift para adequar a imagem
        ImgShift = fftshift(ImgFFT);
        
        % Aplica o filtro sobre a imagem
        FFTFiltrada = ImgShift .* imgFPA;        
       
        
        % Ajusta esquema de cores
        colormap(gray(256)); 
            % plot para exibir a funcao de transferencia
          assignin('base','FFTFiltradaFPA',FFTFiltrada)
          
          % Tirando shift da imagem
          TiraShift = ifftshift(FFTFiltrada);
          
          % Voltando ao dominio espacial
          FFT2IMG = ifft2(TiraShift);
          
          % Salva a imagem filtrada
          assignin('base','ImgFiltradaFPA',FFT2IMG);
          
          %imagesc(real(ImgFiltradaFPx));
          
end
