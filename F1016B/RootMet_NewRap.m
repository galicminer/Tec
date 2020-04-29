function [xr,c]=RootMet_NewRap(x1,f,g,errores)
error=@(xant,xnew)((xnew-xant)/xnew);
c=0;
while true
    xr=x1-(f(x1)/g(x1));
    e=error(x1,xr);
    if abs(e)<errores
        break
    end
    x1=xr;
    c=c+1:
end