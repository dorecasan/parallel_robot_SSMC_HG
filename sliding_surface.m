function y = sliding_surface(u)
%SLIDING_SURFACE 
z1 = u(1:4);
z2 = u(5:8);

global lamda
y = lamda*z1 + z2;
end

