clc %limpia el terminal
t=1:2:10 %1 es inicio, 2 es paso, 10 es final 
t=[1,2,3,3] %definir un vector a mano
t(1); %;oculta 
t(3)=5 % cambiar numeros
f=@(x)(sin(x)) % definir una funcion
sin (t) %puede trabajar con un vector
plot(t,f(t)) % t y f(t) deben tener la misma dimension
plot(t,f(t),'^')%grafica de puntos
plot(t,f(t),'*')
t=1:0.01:10;
plot(t,f(t))
%o 
y=f(t)% la crea un vector nuevo en base a t
plot(t,y,'*')
hold %mantiene la ultima grafica
plot(t,cos(t))
figure % hace otra grafica
grid % coloca un mallado
%plot(t,cos(t)*t);%error por que no se pueden multiplicar vectores asi
plot(t,cos(t).*t) % . es operacion por cada termino
t(1001)=100 %añadir un elemento mas alla de su dimension




