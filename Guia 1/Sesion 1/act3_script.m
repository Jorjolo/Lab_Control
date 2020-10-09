%y(t) = a1u1(t) + a2*sqrt(u2(t))
% dy(t)/dt=a1u1(t) + a2*sqrt(u2(t)), y(0−)

a_1= 2;
a_2= 1;
c = 2;

%Y_Euler = [out.y];
%dY_Euler = [out.dy];
%Y_Heun = [out.y];
%dY_Heun = [out.dy];

delta_y = Y_Euler - Y_Heun;
delta_dy = dY_Euler - dY_Heun;