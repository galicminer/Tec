x=0:0.001:10;
y=0:0.001:10;
f=@(x,y)(cos(x).*y);
z=f(x,y);
plot3(x,y,z)
