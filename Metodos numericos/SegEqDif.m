function x=SegEqDif(Funk,t0,tf,n_i,x1_ini,x2_ini)
%Funk en forma => y''(t,y,y'')=f(t)+q*y+r*y'
dt=(tf-t0)/n_i;
f=@(t,x1,x2)[x2;Funk(t,x1,x2)];
x(:,1)=[x1_ini;x2_ini];
n=1;
    for t=t0:dt:tf
        x(:,n+1)=x(:,n)+f(t,x(1,n),x(2,n))*dt;
        n=n+1;
    end
end
