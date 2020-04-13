%%
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
%%
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
end
%%
epsilon=0.0001;
f=@(x)(x-cos(x));
g=@(x)(1+sin(x));
xr1=RootMet_Bisec(-10,10,f,epsilon)
xr2=RootMet_NewRap(0,f,g,epsilon)
%%
epsilon=0.0001;
f=@(x)(x*(exp(x))-1);
g=@(x)(x^2*(exp(x)));
xr1=RootMet_Bisec(0,1,f,epsilon)
xr2=RootMet_NewRap(8,f,g,epsilon)
%%
epsilon=0.0000001;
f=@(x)(x*log10(x)-1.2);
g=@(x)((log(x)+1)/log(10));
xr1=RootMet_Bisec(1,5,f,epsilon)
xr2=RootMet_NewRap(7,f,g,epsilon)
%%
epsilon=0.0001;
f=@(x)(exp(0.3*x)-x^2+4);
g=@(x)(0.3*exp(0.3*x)-2*x);
xr1=RootMet_Bisec(0,5,f,epsilon)
xr2=RootMet_NewRap(6,f,g,epsilon)
%%
epsilon=0.0001;
f=@(x)(2*cos(x)-(sqrt(x)/2)-1);
g=@(x)(2*-sin(x)-1/(4*sqrt(x)));
xr1=RootMet_Bisec(0,2,f,epsilon)
xr2=RootMet_NewRap(2,f,g,epsilon)

