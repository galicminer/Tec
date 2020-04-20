%%graficar la superficie
[Z,Y]=meshgrid(-20:1:20,-20:1:20);
a=4.20;
b=6.9;
X=((Z/a).^2+(Y/b).^2)-1;
surf(X,Y,Z)
hold on;
%% graficar las curvas de nivel
z0=0;
y0=0;
xk1=-0.5;
xk2=0;
xk3=1;
xk4=2;
s=@(a,xk)(a*(sqrt(xk+1)));
dibujarelipse(s(b,xk1),s(a,xk1),z0,y0,xk1);
dibujarelipse(s(b,xk2),s(a,xk2),z0,y0,xk2);
dibujarelipse(s(b,xk3),s(a,xk3),z0,y0,xk3);
dibujarelipse(s(b,xk4),s(a,xk4),z0,y0,xk4);
%% graficar la elipsoide
a=4.20;
b=6.9;
c=3.60;
[x,y,z]=ellipsoid(1-a,0,0,a,b,c,30);
surf(x,y,z);
hold on;
plot3(1,0,0,'o');
hold on;
axis equal;
%% trazas elipse
z0=0;
y0=0;
xk1=-1;
xk2=-0.5;
xk3=0;
xk4=0.5;
s=@(m,n,xk)((m/n)*(sqrt(n^2-(xk-(1-n))^2)));
dibujarelipse(s(b,a,xk1),s(c,a,xk1),z0,y0,xk1);
hold on;
dibujarelipse(s(b,a,xk2),s(c,a,xk2),z0,y0,xk2);
dibujarelipse(s(b,a,xk3),s(c,a,xk3),z0,y0,xk3);
dibujarelipse(s(b,a,xk4),s(c,a,xk4),z0,y0,xk4);

