Volt(1)=0;
Volt(2)=0;
a=1;
b=1;
E=5;%V
tinicial=0;
tfinal=100;
numerodepasos=1000;
dt=(tfinal-tinicial)/numerodepasos;
V=@(v,dt,a,b,e,n)(((E-(a/dt^2*(v(n-2)))+(v(n-1)*(2*a/dt^2+b/dt-1))))/(a/dt^2+b/dt));
%%
for n=3:numerodepasos
   Volt(n)=V(Volt,dt,a,b,E,n); 
end   
t=tinicial:dt:tfinal-dt;
plot(t,Volt)