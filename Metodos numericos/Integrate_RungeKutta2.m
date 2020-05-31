function [y]=Integrate_RungeKutta2(tinicio,tfinal,dt,f,yinicial,A,P)
c=2;
y(1)=yinicial;
k1=@(x,y)(f(x,y));
k2=@(x,y)(f((x+P(1)*dt),(y+1*k1(x,y)*dt)));
for n=tinicio+dt:dt:tfinal
    y(c)=y(c-1)+(A(1)*(k1(n,y(c-1)))+A(2)*(k2(n,y(c-1))))*dt;
    c=c+1;
end

