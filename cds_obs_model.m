function y = cds_obs_model(u)
%CDS_OBS_MODEL 
F = u(1:4);
x1 = u(5:8);
xh1 = u(9:12);
xh2 = u(13:16); 

global M G
global ep alpha1 alpha2
C = Cfunc(xh2);

xh1_dot = xh2 + alpha1/ep*(x1-xh1);
xh2_dot = M^(-1)*(F-C*xh2-G) + alpha2/ep^2*(x1-xh1);

y = [xh1_dot; xh2_dot];
end

