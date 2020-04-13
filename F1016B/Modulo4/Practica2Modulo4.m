%%
p=7
if p<5
    p=p*2
elseif p>5
    p=p-p
else
    p=p-5
end
%%

p2=12
for i = 1:10
    p2=p2+100;
end
p2
%%
q1=5*10^-6;
q2=-7*10^-6;
x1=0.05;
x2=-0.03;
q=-3*10^-6;
ke=9*10^9;
f=@(x)(((ke*q1*q)./(x-x1).^2)+((ke*q2*q)./(x-x2).^2));
x=-1:0.01:1;
y=f(x);
plot(x,y)
%%
iniciorango=-0.03;
finalrango=0.05;
iteraciones=0;
objedeerror=0.00000000001;
xrant=iniciorango;
while true
    xraiz=(iniciorango+finalrango)/2;
    if f(iniciorango)*f(xraiz)>0
        iniciorango=xraiz;
    elseif f(iniciorango)*f(xraiz)<0
        finalrango=xraiz;
    end
    error=(xraiz-xrant)/xraiz;
    xrant=xraiz;
    iteraciones=iteraciones+1;
    if abs(error)<objedeerror
        break
    end
end
xraiz
iteraciones
f(xraiz)