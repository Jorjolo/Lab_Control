syms s;
% Casos de los Valores
a_I = 1;
b_I = 1;

a_II = 10;
b_II = 10;

a_III = 100;
b_III = 100;

%Funciones de transferencia asociados
G_I = b_I /(s + a_I);
G_II = b_II /(s + a_II); 
G_III =b_III /(s + a_III); 

%Laplace inverso a respuesta eescalon 
Y_I = ilaplace((1/s)*G_I);
Y_II = ilaplace((1/s)*G_II);
Y_III = ilaplace((1/s)*G_III);

%Generar variable tiempo
t = 0:0.001:10;

%Definicion en tiempo 
Y11 = 1 - exp(-t);
Y22 = 1 - exp(-10*t);
Y33 = 1 - exp(-100*t);

%plot (t,Y22);
%xlim([0 10]);
%ylim([0 2]);

%plot(out.H_I_sim)
%hold on
%plot(out.H_II_sim)
%plot(out.H_III_sim)
%hold off


%Errores
%H_1
error_temp_1 = Y11 - out.H_I_sim.data';
error_H_1= sum(error_temp_1.^2)/10001; 
%H_2
error_temp_2 = Y22 - out.H_I_sim.data';
error_H_2= sum(error_temp_2.^2)/10001; 
%H_3
error_temp_3 = Y33 - out.H_I_sim.data';
error_H_3= sum(error_temp_3.^2)/10001; 