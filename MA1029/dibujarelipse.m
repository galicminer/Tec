function elipse = dibujarelipse(s2,s1,z0,y0,xk)
tita = [0:0.01:2*pi];%% como es una elipse completa
x=zeros(1,629,1,1)+xk;
z = s1*cos(tita)+z0;
y = s2*sin(tita)+y0;
elipse=plot3(x,y,z)
axis equal;