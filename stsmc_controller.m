function y= stsmc_controller(u)
%STSMC_CONTROLLER
ss_int = u(1:4);
s = u(5:8);
x1d_dot = u(9:12);
x1d_ddot = u(13:16);
x1 = u(17:20);
xh1 = u(21:24);
xh2 = u(25:28);

global M G ep alpha1 alpha2 lamda rho1 rho2

C = Cfunc(xh2);
Feq = G+C*xh2-M*(lamda*(xh2+alpha1/ep*(x1-xh1)-x1d_dot) + alpha2/ep^2*(x1-xh1)-x1d_ddot);
Fsw = G+C*xh2-M*(rho1*sqrt(abs(s)).*sign(s) + rho2*ss_int);
% Fsw = G+C*xh2-M*(rho1*sign(s));
y = Feq + Fsw;
end

