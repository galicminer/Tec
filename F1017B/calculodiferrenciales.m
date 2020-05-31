clear all; %#ok<CLALL>
inicio=0;
fin=10;
num_int=100;
dx=(fin-inicio)/num_int;
f=@(t,y)(20+7*sin(2*t)-y)/10;
yinicial=15;
y=Integrate_RungeKutta4(inicio,fin,dx,f,yinicial);
y1=Integrate_Heun(inicio,fin,dx,f,yinicial);
y2=Integrate_Euler(inicio,fin,dx,f,yinicial);
x=inicio:dx:fin;
plot(x,y)
hold on;
plot(x,y1)
plot(x,y2)
legend('RK4','Heun','Euler')


