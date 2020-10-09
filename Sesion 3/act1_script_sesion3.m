Ts=0.001;
f=16;

%% -----RECONSTRUCCIONES-----
%{
y2=reconstruccion(0.51,out.y2.time,out.y2.data);
y3=reconstruccion(0.50,out.y3.time,out.y3.data);
y4=reconstruccion(0.49,out.y4.time,out.y4.data);
y5=reconstruccion(0.1,out.y5.time,out.y5.data);

zoh1=reconstruccion(Ts,out.y_zoh1.time,out.y_zoh1.data);
zoh2=reconstruccion(Ts,out.y_zoh2.time,out.y_zoh2.data);
zoh3=reconstruccion(Ts,out.y_zoh3.time,out.y_zoh3.data);
zoh4=reconstruccion(Ts,out.y_zoh4.time,out.y_zoh4.data);
zoh5=reconstruccion(Ts,out.y_zoh5.time,out.y_zoh5.data);
zoh6=reconstruccion(Ts,out.y_zoh6.time,out.y_zoh6.data);

foh1=reconstruccion(Ts,out.y_foh1.time,out.y_foh1.data);
foh2=reconstruccion(Ts,out.y_foh2.time,out.y_foh2.data);
foh3=reconstruccion(Ts,out.y_foh3.time,out.y_foh3.data);
foh4=reconstruccion(Ts,out.y_foh4.time,out.y_foh4.data);
foh5=reconstruccion(Ts,out.y_foh5.time,out.y_foh5.data);
foh6=reconstruccion(Ts,out.y_foh6.time,out.y_foh6.data);
%}

%% -----SIN RETENTOR-----
%{
figure(1)
subplot 411
hold on
plot(out.y2.time,y2,'blue','LineWidth',1)
s=stem(out.y2.time,out.y2.data)
s.Color = 'black'
s.LineWidth = 0.5
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,51[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 412
hold on
plot(out.y3.time,y3,'blue','LineWidth',1)
s=stem(out.y3.time,out.y3.data)
s.Color = 'black'
s.LineWidth = 0.5
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,50[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 413
hold on
plot(out.y4.time,y4,'blue','LineWidth',1)
s=stem(out.y4.time,out.y4.data)
s.Color = 'black'
s.LineWidth = 0.5
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,49[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 414
hold on
plot(out.y5.time,y5,'blue','LineWidth',1)
s=stem(out.y5.time,out.y5.data)
s.Color = 'black'
s.LineWidth = 0.5
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,1[s]')
ax=gca
ax.FontSize = f
grid on
hold off
%}

%% -----RETENTOR ZERO-----
%{
figure(2)
subplot 321
hold on
plot(out.y_zoh1.time,zoh1,'black','LineWidth',4)
s=stem(out.y_zoh1.time,out.y_zoh1.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,75[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 322
hold on
plot(out.y_zoh2.time,zoh2,'black','LineWidth',4)
s=stem(out.y_zoh2.time,out.y_zoh2.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,5[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 323
hold on
plot(out.y_zoh3.time,zoh3,'black','LineWidth',4)
s=stem(out.y_zoh3.time,out.y_zoh3.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,2[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 324
hold on
plot(out.y_zoh4.time,zoh4,'black','LineWidth',4)
s=stem(out.y_zoh4.time,out.y_zoh4.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,1[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 325
hold on
plot(out.y_zoh5.time,zoh5,'black','LineWidth',4)
s=stem(out.y_zoh5.time,out.y_zoh5.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,05[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 326
hold on
plot(out.y_zoh6.time,zoh6,'black','LineWidth',4)
s=stem(out.y_zoh6.time,out.y_zoh6.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,01[s]')
ax=gca
ax.FontSize = f
grid on
hold off
%}

%% -----RETENTOR UNO-----
%{
figure(3)
subplot 321
hold on
plot(out.y_foh1.time,foh1,'black','LineWidth',4)
s=stem(out.y_foh1.time,out.y_foh1.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,75[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 322
hold on
plot(out.y_foh2.time,foh2,'black','LineWidth',4)
s=stem(out.y_foh2.time,out.y_foh2.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,5[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 323
hold on
plot(out.y_foh3.time,foh3,'black','LineWidth',4)
s=stem(out.y_foh3.time,out.y_foh3.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,2[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 324
hold on
plot(out.y_foh4.time,foh4,'black','LineWidth',4)
s=stem(out.y_foh4.time,out.y_foh4.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,1[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 325
hold on
plot(out.y_foh5.time,foh5,'black','LineWidth',4)
s=stem(out.y_foh5.time,out.y_foh5.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,05[s]')
ax=gca
ax.FontSize = f
grid on
hold off

subplot 326
hold on
plot(out.y_foh6.time,foh6,'black','LineWidth',4)
s=stem(out.y_foh6.time,out.y_foh6.data)
s.Color = 'blue'
s.LineWidth = 0.01
p=plot(out.y1.time,out.y1.data,':')
p.Color = 'red'
p.LineWidth = 0.1
title('Muestreo con Ts=0,01[s]')
ax=gca
ax.FontSize = f
grid on
hold off
%}