%metodo de newton Rampson
clear all
clc
x1=5;
f=@(x)(x^2+2*x-3);
g=@(x)(2*x+2);
error=@(xant,xnew)((xnew-xant)/xnew);
errores=0.0002;
while true
    xr=x1-(f(x1)/g(x1));
    e=error(x1,xr);
    if abs(e)<errores
        break
    end
    x1=xr;
end


    
