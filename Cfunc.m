function y = Cfunc(x2)
%CFUNC
l1_dot = x2(1);
l2_dot = x2(2);

global Ipx Ipy  a
y = [15*Ipy*l1_dot^2/(4*a^4),   0,  0,  0;...
    0,  5*Ipx*l2_dot^2/(12*a^4),    0,  0;...
    0,  0,  0,  0;...
    0,  0,  0,  0;];
end

