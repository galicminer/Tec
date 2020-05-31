function [y]=derivate_aproxdef(tinicio,tfinal,dt,f)
c=1;
for n=tinicio:dt:tfinal
y(c)=((f(n)-f(n-dt))/dt);
c=c+1;
end

