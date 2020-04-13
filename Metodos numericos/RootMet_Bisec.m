function [xr,c]=RootMet_Bisec(a,b,f,errores)
c=0;
xrant=a;
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