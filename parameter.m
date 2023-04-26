clc;
clear;
close all;

global M G Ipx Ipy a
global ep alpha1 alpha2
global lamda rho1 rho2

%% CDS parameter
a = 0.5 ;   % panel radius
mp = 15;    % mass of the mobile panel
m1 =0.5;    % mass of the covering of pistons
m2 = 3;     % mass of pistons
mdc = 3;    % mass of motor 

Ipx = 1; Ipy = 1; Igamma = 1;   % inertai of mobile panel
g = 9.8;    % gravitational acceleration

M = [m2+mdc+mp/9+Ipy/(4*a^2),   mp/9,   mp/9,   0;...
    mp/9,   m2+mdc+mp/9+Ipx/(12*a^2),   mp/9,   0;...
    mp/9,   mp/9,   m2+mdc+mp/9,    0;...
    0,      0,      0,      Igamma];

G = (m2+mp/3)*g*[1,1,1,0]';

%% High-gain observer parameter
ep = 0.005; 
alpha1 = 2;
alpha2 = 1;

%% Super-twisting sliding mode control
lamda = 25;
rho1 = 20;
rho2 = 20;

