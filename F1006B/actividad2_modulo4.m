V=[((15)^(1/2)*10^3),(25/(14-6^2)),log((35/0.4^3)),(sin(65*pi/180)/(cos(80*pi/180))),150,(cos(pi/20))^2]
%%
a=3.5;
b=-6.4;
V=[a,a^2,a/b,a*b,a^(1/2)]
%%
t=1:6:43
%%
i=96:-11:1
%%
ma=[(130:-20:10);(1:(11/6):12);(12:10:72)]
%%
a=[-4,3,1;5,6,-2;2,-5,4.5]
b=[-18.2;-48.8;92.5]
x=inv(a)*b
comprobante=a*x
%%
A=rand(4,4)*10
num1=A*A%multiplicacion de matrices
num2=A.*A%multiplicacion por componente
num3=A/A%division de matrices 
num4=A./A%division por componentes
num5=det(A)%consigue el determinante de la matrix
num6=inv(A)%consigue la matriz de la inversa
%%
v0=162;
angulo=70/180*pi;
g=9.81;
t=1:5:46;
x=v0*cos(angulo)*t;
y=v0*sin(angulo)*t-(1/2)*g*(t.^2);
r=(x.^2+y.^2).^(1/2)
tangente=tan(y./x)
