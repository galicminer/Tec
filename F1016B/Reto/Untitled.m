%Descarga de un capacitor
clear all;
clc;
tinicial=0;
tfinal=120;
npaso=100000;
paso=(tfinal-tinicial)/npaso;
t=tinicial:paso:tfinal;
R1=100;
R2=100;
Rc=1000000;
Cap1=10*10^-6;
Cap2=10*10^-6;
EspSol=5;
A=@(RC)(R2*Cap1*Cap2*(R1+RC));
B=@(RC)(R2*Cap2+(Cap1+Cap2)*(R1+RC));
C=1;
Evolt=5;
s1=@(RC)(-B(RC)+sqrt((B(RC))^2-4*A(RC)*C))/(2*A(RC));
s2=@(RC)(-B(RC)-sqrt((B(RC))^2-4*A(RC)*C))/(2*A(RC));
testi=Evolt/abs(s1(Rc));
Co2=(-EspSol)/(1-(s2(Rc)/s1(Rc)));
Co1=(-s2(Rc)*Co2/s1(Rc));
%% Iteración Analitica 
Vc2=@(x) (Co1).*exp(s1(Rc)*x)+(Co2).*exp(s2(Rc)*x)+5;
%comet(t,Vc2(t));
tiledlayout(1,2)
nexttile
plot(t,Vc2(t))

title('Voltaje vs. Tiempo (Solucion Analitica)')
grid
(xlabel('Tiempo de Carga'));
(ylabel('Voltaje de Capacitor'));
%% Iteracion numérica 
nexttile
V(1)=0;
V(2)=0;
for  n=2:npaso
    V(n+1)=[Evolt+V(n)*(((2*A(Rc))/(paso^2))+(B(Rc)/paso)-1)-((A(Rc)*V(n-1))/(paso^2))]/((A(Rc)/(paso^2))+(B(Rc)/paso));
end
plot(t,V)
title('Voltaje vs. Tiempo (Solucion numerica)')
grid
(xlabel('Tiempo de Carga'));
(ylabel('Voltaje de Capacitor'));
%% Encontrando Rc para t=0.1 seg
T_Rc=0.1;
Resliminfe=0;
Reslimposte=1000000;
error=0.00001;
f=@(x) ((Evolt/abs(s1(x))-T_Rc));
RootMet_Bisec(Resliminfe,Reslimposte,f,error)