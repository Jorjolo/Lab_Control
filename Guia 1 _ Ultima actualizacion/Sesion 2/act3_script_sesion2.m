% Respuesta en Frecuencia
 % TF
 Gc1 = tf ([0 1], [1 2*0.7*1 1]) ;
 
 %Para delta = 1e-3
 %{
%Comentar segun el delta
 resp1 = out.resp1;
 resp2 = out.resp2;
 resp3 = out.resp3;
 %}
 
 
 %Para delta = 0.5
 %{
%Comentar segun el delta
 resp1_05 = out.resp1;
 resp2_05 = out.resp2;
 resp3_05 = out.resp3;
 %}
 
%Comparacion u1 para distintos deltas
%{
%Respuesta para u_1(t) para distintos Δ
hold on
plot(resp1.time,resp1.data)
plot(resp1_05.time,resp1_05.data)
grid on
hold off
%}
%Comparacion u2 para distintos deltas
%{
%Respuesta para u_2(t) para distintos Δ
hold on
plot(resp2.time,resp2.data)
plot(resp2_05.time,resp2_05.data)
grid on
hold off
%}
%Comparacion u3 para distintos deltas
%{
%Respuesta para u_3(t) para distintos Δ
hold on
plot(resp3.time,resp3.data)
plot(resp3_05.time,resp3_05.data)
grid on
hold off
%}