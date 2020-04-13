clear all
clc
x1=5;
x0=5;
f=@(x)(x^2+2*x-3);
error=@(xant,xnew)((xnew-xant)/xnew);
errores=0.00002;
while true
    xr=x1-((f(x1)*(x1-x0))/(f(x1)-f(x0)));
    e=error(x1,xr);
    if abs(e)<errores
        break
    end
    x0=x1;
    x1=xr
end
xr

