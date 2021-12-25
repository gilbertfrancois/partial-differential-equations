% 1D Burgers' equation, finite volume, Godunov scheme with limiter

x_interface = linspace(0,1,101);
x = (x_interface(2:end) + x_interface(1:end-1))./2;
u = sin(2*pi*x);
u0=u;

[t,u] = ode45(@ddt_burgers, [0, .5], u0);
plot(x,u)