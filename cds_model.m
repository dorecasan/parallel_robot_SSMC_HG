function y = cds_model(u)
%CDS_MODEL 
F = u(1:4);
x2 = u(5:8); 

global M G
C = Cfunc(x2);

x1_dot = x2;
x2_dot = M^(-1)*(F-C*x2-G);

y = [x1_dot; x2_dot];
end

