%%graficar la superficie 
[Z,Y]=meshgrid(-5:0.5:5,-5:0.5:5);
a=4;
q=5;
r=2;
X=((Z/r).^2+(Y/q).^2)-a;
surf(X,Y,Z)
hold on;
axis equal;
%%
z0=0;
y0=0;
xk1=0;
s=@(a,xk,X0)(a*(sqrt(xk+X0)));
dibujarelipse(s(q,xk1,a),s(r,xk1,a),z0,y0,xk1);
xlabel("x axis")
ylabel("y axis")
zlabel("z axis")
%%
h=1;
c=2;
m=3;
n=5;
[x,y,z]=ellipsoid(h,0,0,c,m,n,30);
surf(x,y,z);
hold on;
axis equal;
xlabel("x axis")
ylabel("y axis")
zlabel("z axis")
%% trazas elipse
z0=0;
y0=0;
xk1=0;
s=@(m,n,h,xk)((m/n)*(sqrt(n^2-(xk-h)^2)));
dibujarelipse(s(m,c,h,xk1),s(n,c,h,xk1),z0,y0,xk1);
hold on;