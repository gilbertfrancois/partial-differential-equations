% 1D Burgers' equation, finite volume, Godunov scheme with limiter
% Verification and validation of the Python implementation:
% notebook/1D Burgers' equation, finite volume, Godunov scheme with limiter.ipynb
% 
% permalink:
% https://github.com/gilbertfrancois/partial-differential-equations/blob/8397fe8350236e798edebfe5c46e899843545cda/notebook/1D%20Burgers'%20equation,%20finite%20volume,%20Godunov%20scheme%20with%20limiter.ipynb


x_interface = linspace(0,1,101);
x = (x_interface(2:end) + x_interface(1:end-1))./2;
u = sin(2*pi*x);
u0=u;

[t,u] = ode45(@fn_ddt_burgers, [0, .5], u0);
plot(x,u)