function yr = reconstruccion(Ts,t,ym)
%funcion que implementa la reconstruccion de una se�al en base a muestras
%usando sinc.  Ts corresponde al tiempo de muestreo (Ts=1/fs), t
%corresponde al vector de tiempo de la se�al que consideramos continua,  e ym es 
%la amplitud de la se�al muestreada. la salida yr es la amplitud de la
%se�al reconstruida

yr = zeros(size(t));
for i = 1:length(t)
    for n = 0:length(ym)-1
%       yr(i)=yr(i)+ym(n+1)*sin(pi*(t(i)-n*Ts)/Ts)/(pi*(t(i)-n*Ts)/Ts);
        yr(i)=yr(i)+ym(n+1)*sinc((t(i)-n*Ts)/Ts);
    end
end
