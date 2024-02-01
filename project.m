
% DC_MOTOR
% RATED VALUES
%Power 4 Kw
%Max speed 2000RPM
%Max Voltage 150V
% Parameter

Ra=1;
La=1e-3;
ke=0.6;
kt=0.6;

J=0.1; % Motor and Load
B=0.029; % Motor and Loadclear


Ge=tf(1,[La Ra]);
Gm=tf(1,[J B]);
G=zpk(feedback(Ge*Gm*kt,ke));
plot(x,y);

