%busqueda binaria de raices
%sea f(x)
% [a,b]
clear all
f=@(x)(x-cos(x));
a=-10;
b=10;
c=0;
xrant=100;
while true
    xr=(a+b)/2;
    if f(a)*f(xr)>0
        a=xr;
    elseif f(a)*f(xr)<0
        b=xr;
    end
    e=(xr-xrant)/xr;
    xrant=xr;
    c=c+1;
    if abs(e)<0.00001
        break
    end
end
xr
c
f(xr)
    
