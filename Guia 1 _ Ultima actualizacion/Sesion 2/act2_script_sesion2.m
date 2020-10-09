 
 % caso 1
 Gc1 = tf ([0 1], [1 2*0.7*1 1]) ;
 %caso 2 
 Gc2 = tf ([0 1], [1 2*0.3*1 1]) ;
 %caso 3 
 Gc3 = tf ([0 1], [1 2*0.7*10 100]) ;
 %caso 4 
 Gc4 = tf ([0 1], [1 2*0.3*10 100]) ;
 %caso 5 
 Gc5 = tf ([-1 1], [1 2*0.7*1 1]) ;
  % ejercicio 1 
 %Polos y Ceros
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
%Plots
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
 
 %Tomar datos para respuesta a escalon
 %{%generar matrices
 [data_1, time_1] = step(Gc1);
 [data_2, time_2] = step(Gc2);
 [data_3, time_3] = step(Gc3);
 [data_4, time_4] = step(Gc4);
 [data_5, time_5] = step(Gc5);
 
 %Generar par dato,tiempo
 caso_I = [data_1  time_1];
 caso_II= [data_2 time_2];
 caso_III = [data_3 time_3];
 caso_IV = [data_4 time_4];
 caso_V = [data_5 time_5];
 %}
 %Calculo de Overshoot
 %{
%Overshoots
 overshoot_I = max(caso_I) - [1 0];
 overshoot_II = max(caso_II)- [1 0] ;
 overshoot_III = max(caso_III)- [0.01 0] ;
 overshoot_IV = max(caso_IV)- [0.01 0] ;
 overshoot_V = max(caso_V)- [1 0] ;
 %}
 
 %Buscar el tiempo peak
 %{
% Caso 1
 tp1=overshoot_I(1,1) + 1;
 p1 = find(caso_I == tp1);
 tpk1 = caso_I(p1,2);
  % Caso 2
 tp2=overshoot_II(1,1) + 1;
 p2 = find(caso_II == tp2);
 tpk2 = caso_II(p2,2);
  % Caso 3
 tp3=overshoot_III(1,1) + 0.01;
 p3 = find(caso_III == tp3);
 tpk3 = caso_III(p3,2);
  % Caso 1
 tp4=overshoot_IV(1,1) + 0.01;
 p4 = find(caso_IV == tp4);
 tpk4 = caso_IV(p4,2);
  % Caso 1
 tp5=overshoot_V(1,1) + 1;
 p5 = find(caso_V == tp5);
 tpk5 = caso_V(p5,2); 
 %}
 
 
 %Calculo de undershoot
 
 V = min(caso_V);
 undershoot_V = abs(abs(V(1,1))-1);
 

%Buscar el tiempo valle
 %{
%
 
% Caso 5
 tv5=V(1,1);
 v5 = find(caso_V == tv5);
 tva5 = caso_V(v5,2);
%}
 %Valor promedio
 valor_eeI = mean(caso_I);
 valor_eeII = mean(caso_II);
 valor_eeIII = mean(caso_III);
 valor_eeIV = mean(caso_IV);
 valor_eeV = mean(caso_V);
    
 
    
    
    
    
    
    
    
    
    