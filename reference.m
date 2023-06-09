function y = reference(u)
%REFERENCE
t = u;
l1  = -0.0045*t^3+0.034*t^2-0.025*t+0.45;
l2  =  -0.0008*t^3+0.0175*t^2-0.11*t+0.7;
l3 =  0.0008*t^3-0.0125*t^2+0.072*t+0.7;
gamma = 0.004*t^3-0.0625*t^2+0.4*t-0.5;
y = [l1; l2; l3; gamma];
end

