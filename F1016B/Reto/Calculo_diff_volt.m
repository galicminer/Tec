%Descarga de un capacitor
t=0:0.01:200;
R1=100;
R2=100;
Rc=1000000;
C1=10*10^-6;
C2=10*10^-6;
xp=5;
A=R2*C1*C2*(R1+Rc);
B=R2*C2+(C1+C2)*(R1+Rc);
C=1;
s1=(-B+sqrt(B^2-4*A*C))/(2*A);
s2=(-B-sqrt(B^2-4*A*C))/(2*A);
Co2=(-xp)/(1-(s2/s1));
Co1=(-s2*Co2/s1);
%%
Vc2=@(x) (Co1).*exp(s1*x)+(Co2).*exp(s2*x)+5;
plot(t,Vc2(t))
%comet(t,Vc2(t));
title('Voltaje vs. Tiempo')
grid
(xlabel('Tiempo de Descarga'));
(ylabel('Voltaje de Capacitor'));