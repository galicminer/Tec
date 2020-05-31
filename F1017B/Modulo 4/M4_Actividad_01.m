%Ejercicio 2
%% a)
inicio=0;
fin=10;
num_int=100;
dx=(fin-inicio)/num_int;
RC=0.1;
SV=0;
f=@(t,y)((SV-y)/RC);
Solan=@(t)(2*exp(-10*t));
yinicial=2;
y=Integrate_RungeKutta4(inicio,fin,dx,f,yinicial);
x=inicio:dx:fin;
plot(x,y)
hold on;
plot(x,Solan(x))
title('Voltaje vs Tiempo')
xlabel('tiempo')
ylabel('Voltage')
legend('Solucion por RungeKutta','Solucion Analitica')
%% b)
figure
num_int=100;
dx=(fin-inicio)/num_int;
f=@(t,y)(20+7*sin(2*t)-y)/10;
yinicial=15;
y=Integrate_RungeKutta4(inicio,fin,dx,f,yinicial);
x=inicio:dx:fin;
plot(x,y)


