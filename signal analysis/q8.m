
tspan = [0 15];  
y0 = 2;         

myODE = @(t, y) -2*y + 2*cos(2*t);

[t, y] = ode23(myODE, tspan, y0);

plot(t, y);
title('Solution of dy/dt');
xlabel('Time t');
ylabel('y(t)');
grid on;
