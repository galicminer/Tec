function [y]=Integrate_RungeKutta1(tinicio,tfinal,dt,f,yinicial,A)
c=2;
y(1)=yinicial;
k1=@(x,y)(f(x,y));
for n=tinicio+dt:dt:tfinal
    y(c)=y(c-1)+A(1)*k1(n,y(c-1))*dt;
    c=c+1;
end

