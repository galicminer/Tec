function [y]=Integrate_RungeKutta4(tinicio,tfinal,dt,f,yinicial)
c=2;
y(1)=yinicial;
k1=@(x,y)(f(x,y));
k2=@(x,y)(f((x+(1/2)*dt),(y+(1/2)*k1(x,y)*dt)));
k3=@(x,y)(f((x+(1/2)*dt),(y+(1/2)*k2(x,y)*dt)));
k4=@(x,y)(f((x+dt),(y+(1/2)*k3(x,y)*dt)));
for n=tinicio+dt:dt:tfinal
    y(c)=y(c-1)+((1/6)*(k1(n,y(c-1)))+(2/6)*(k2(n,y(c-1)))+(2/6)*(k3(n,y(c-1)))+(1/6)*(k4(n,y(c-1))))*dt;
    c=c+1;
end

