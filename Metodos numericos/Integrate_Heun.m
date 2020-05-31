function [y]=Integrate_Heun(tinicio,tfinal,dt,f,yinicial)
c=2;
y(1)=yinicial;
k1=@(x,y)(f(x,y));
k2=@(x,y)(f((x+1*dt),(y+1*k1(x,y)*dt)));
for n=tinicio+dt:dt:tfinal
    y(c)=y(c-1)+((1/2)*(k1(n,y(c-1)))+(1/2)*(k2(n,y(c-1))))*dt;
    c=c+1;
end

