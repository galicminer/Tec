function [y]=scdderivate_aproxdef(tinicio,tfinal,dt,f)
c=1;
for n=tinicio:dt:tfinal
    y(c)=(((f(n+dt)-2*(f(n))+(f(n-dt))))/(dt^2));
    c=c+1;
end