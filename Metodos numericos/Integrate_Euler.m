function [y]=Integrate_Euler(tinicio,tfinal,dt,f,yinicial)
c=2;
y(1)=yinicial;
for n=tinicio+dt:dt:tfinal
    y(c)=y(c-1)+f(n,y(c-1))*dt;
    c=c+1;
end

