                                                                                      
 %caso 2 
 Gc2 = tf ([0 1], [1 2*0.3*1 1]) ;
 %caso 3 
 Gc3 = tf ([0 1], [1 2*0.7*10 100]) ;
 %caso 4 
 Gc4 = tf ([0 1], [1 2*0.3*10 100]) ;
 %caso 5 
 Gc5 = tf ([-1 1], [1 2*0.7*1 1]) ;
  % ejercicio 1 
 %{
 pole_c1 = pole (Gc1) ;
 zero_c1 = zero (Gc1) ;
 
 pole_c2 = pole (Gc2) ;
 zero_c2 = zero (Gc2) ;
 
 pole_c3 = pole (Gc3) ;
 zero_c3 = zero (Gc3) ;
 
 pole_c4 = pole (Gc4) ;
 zero_c4 = zero (Gc4) ;
  
 pole_c5 = pole (Gc5) ;
 zero_c5 = zero (Gc5) ;
  
 %}
 %Mismo factor de amortiguamiento
%{
 
subplot(1,2,1)
step(Gc1)
subplot(1,2,2)
step(Gc3)
 %} 
 %Respuesta impulso
%{
% ejercicio 2
 time = (0 : 0.001 : 20) ;
 subplot(1,2,1)
 %comparacio 1 y 2 
 impulse ( time , Gc1)  
 hold on
 impulse ( time , Gc2)
 subplot(1,2,2)
 %comparacion 3 y 4
 time_1 = (0 : 0.001 : 5);
 impulse (time_1 , Gc3)
 hold on
 impulse (time_1 , Gc4)
 %}
 %Respuesta a escalon 
%{
 subplot(2,3,1)
    step(Gc1)
 subplot(2,3,2)
    step(Gc2)
 subplot(2,3,3)
    step(Gc3)
 subplot(2,3,4)
    step(Gc4)
 subplot(2,3,5)
    step(Gc5)
 %}
    
 [data_1, time_1] = step(Gc1);
 [data_2, time_2] = step(Gc2);
 [data_3, time_3] = step(Gc3);
 [data_4, time_4] = step(Gc4);
 [data_5, time_5] = step(Gc5);
 
 
    
    
    
    
    
    
    
    
    
    
    
    
    