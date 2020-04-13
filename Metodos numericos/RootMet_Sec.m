function [xr,c]=RootMet_Sec(x1,x0,f,errores)
error=@(xant,xnew)((xnew-xant)/xnew);
c=0
while true
    xr=x1-((f(x1)*(x1-x0))/(f(x1)-f(x0)));
    e=error(x1,xr);
    if abs(e)<errores
        break
    end
    x0=x1;
    x1=xr;
    c=c+1;
end
