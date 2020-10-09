
%y(t) = a1u1(t) + a2u2(t) + w(t)

a_1 = 1;    %Ganancia de la equacion
a_2 = 2;    %Ganancia de la equacion


phi = [out.u_1 out.u_2]; 
Y = [out.y_k];
theta = (inv(transpose(phi)*phi))*phi'*Y; %θ = (ΦT Φ)−1ΦTY metodo de aproximacion minimocuadrados