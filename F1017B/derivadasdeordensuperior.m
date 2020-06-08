t0=-10;
tf=10;
n_i=2000;
dt=(tf-t0)/n_i;
f=@(t,x1,x2)[x2;(t-3*x2-2*x1)];
x(:,1)=[2;0];
n=1;
for t=t0:dt:tf
    x(:,n+1)=x(:,n)+f(t,x(1,n),x(2,n))*dt;
    n=n+1;
end
time=t0:dt:tf+dt;
plot(time,x(1,:))
grid
figure
plot(time,x(2,:))
grid;
