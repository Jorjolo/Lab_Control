% y(t) = a0 + a1u1(t) + a2u2(t)^2 + w(t) 
a_0 = 3;
a_1 = 2;    %Ganancia de la equacion
a_2 = 1;    %Ganancia de la equacion

Y = [out.y_k];
m1 = ones(length(Y),1);
phi = [m1 out.u_1 out.u_2]; 
theta = (inv(phi'*phi))*phi'*Y; %θ = (ΦT Φ)−1ΦTY metodo de aproximacion minimocuadrados