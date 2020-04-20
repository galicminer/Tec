function [xr,c]=RootMet_Bisec(a,b,f,errores)
error=@(xant,xnew)((xnew-xant)/xnew);
c=0;
xrant=a;
while true
    xr=(a+b)/2;
    if f(a)*f(xr)>0
        a=xr;
    elseif f(a)*f(xr)<0
        b=xr;
    end
    e=error(xrant,xr);
    c=c+1;
    if abs(e)<errores
        break
    end
    xrant=xr;
    c=c+1;
end

    