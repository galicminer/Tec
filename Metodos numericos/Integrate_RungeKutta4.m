function [y]=Integrate_RungeKutta4(tinicio,tfinal,dt,f,yinicial)
c=2;
y(1)=yinicial;
k1=@(t,x,y)(f(t,x,y));
k2=@(t,x,y)(f(t,(x+(1/2)*dt),(y+(1/2)*k1(t,x,y)*dt)));
k3=@(t,x,y)(f(t,(x+(1/2)*dt),(y+(1/2)*k2(t,x,y)*dt)));
k4=@(t,x,y)(f(t,(x+dt),(y+(1/2)*k3(t,x,y)*dt)));
for n=tinicio+dt:dt:tfinal
    y(c)=y(c-1)+((1/6)*(k1(0,n,y(c-1)))+(2/6)*(k2(0,n,y(c-1)))+(2/6)*(k3(0,n,y(c-1)))+(1/6)*(k4(0,n,y(c-1))))*dt;
    c=c+1;
end

