% Sesion 3 Act1
%Actividad 1.1
%{
ts1 = 0.001;
ts2 = 0.51;
ts3 = 0.5;
ts4 = 0.49;
ts5 = 0.1;
sin_a_r=reconstruccion(ts1,out.sin_a.time,out.sin_a.data);
sin_b_r=reconstruccion(ts2,out.sin_b.time,out.sin_b.data);
sin_c_r=reconstruccion(ts3,out.sin_c.time,out.sin_c.data);
sin_d_r=reconstruccion(ts4,out.sin_d.time,out.sin_d.data);
sin_e_r=reconstruccion(ts5,out.sin_e.time,out.sin_e.data);
subplot(3,2,1)
plot(out.sin_a.time,sin_a_r)
title("Ts = 0.001")
xlabel("")
subplot(3,2,2)
plot(out.sin_b.time,sin_b_r)
title("Ts = 0.51s")
subplot(3,2,3)
plot(out.sin_c.time,sin_c_r)
title("Ts = 0.5s")
subplot(3,2,4)
plot(out.sin_d.time,sin_d_r)
title("Ts = 0.49s")
subplot(3,2,5)
plot(out.sin_e.time,sin_e_r)
title("Ts = 0.1s")
%}
%Actividad 1.2
%{
ts1 = 0.75;
ts2 = 0.5;
ts3 = 0.2;
ts4 = 0.1;
ts5 = 0.05;
ts6 = 0.01;
sin_a_r=reconstruccion(ts1,out.sin_a.time,out.sin_a.data);
sin_b_r=reconstruccion(ts2,out.sin_b.time,out.sin_b.data);
sin_c_r=reconstruccion(ts3,out.sin_c.time,out.sin_c.data);
sin_d_r=reconstruccion(ts4,out.sin_d.time,out.sin_d.data);
sin_e_r=reconstruccion(ts5,out.sin_e.time,out.sin_e.data);
sin_f_r=reconstruccion(ts6,out.sin_f.time,out.sin_f.data);
subplot(3,2,1)
stairs(out.sin_a.time,sin_a_r)
title("Ts = 0.75")
xlabel("")
subplot(3,2,2)
stairs(out.sin_b.time,sin_b_r)
title("Ts = 0.5s")
subplot(3,2,3)
stairs(out.sin_c.time,sin_c_r)
title("Ts = 0.2s")
subplot(3,2,4)
stairs(out.sin_d.time,sin_d_r)
title("Ts = 0.1s")
subplot(3,2,5)
stairs(out.sin_e.time,sin_e_r)
title("Ts = 0.05s")
subplot(3,2,6)
stairs(out.sin_f.time,sin_f_r)
title("Ts = 0.01s")
%}
%Actividad 1.3
ts1 = 0.75;
ts2 = 0.5;
ts3 = 0.2;
ts4 = 0.1;
ts5 = 0.05;
ts6 = 0.01;
sin_a_r=reconstruccion(ts1,out.sin_a.time,out.sin_a.data);
sin_b_r=reconstruccion(ts2,out.sin_b.time,out.sin_b.data);
sin_c_r=reconstruccion(ts3,out.sin_c.time,out.sin_c.data);
sin_d_r=reconstruccion(ts4,out.sin_d.time,out.sin_d.data);
sin_e_r=reconstruccion(ts5,out.sin_e.time,out.sin_e.data);
sin_f_r=reconstruccion(ts6,out.sin_f.time,out.sin_f.data);
subplot(3,2,1)
stem(out.sin_a.time,sin_a_r)
title("Ts = 0.75")
xlabel("")
subplot(3,2,2)
stem(out.sin_b.time,sin_b_r)
title("Ts = 0.5s")
subplot(3,2,3)
stem(out.sin_c.time,sin_c_r)
title("Ts = 0.2s")
subplot(3,2,4)
stem(out.sin_d.time,sin_d_r)
title("Ts = 0.1s")
subplot(3,2,5)
stem(out.sin_e.time,sin_e_r)
title("Ts = 0.05s")
subplot(3,2,6)
stem(out.sin_f.time,sin_f_r)
title("Ts = 0.01s")