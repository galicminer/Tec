%condiciones iniciales
inicial_pos=0;
inicial_vel=0;
inicial_t=0;
final_t=20;
pasos=1000;
dt=(final_t-inicial_t)/pasos;
%datos problema
v_bateria=6;
masa=0.1;
resistencia=[2,9,0.5];
campo=[2.5,5,1.5];
ancho=0.15;

M1=(campo(1)^2*ancho^2)/(masa*resistencia(1));
N1=(v_bateria*campo(1)*ancho)/(masa*resistencia(1));

t=inicial_t:dt:final_t;

%% solucion analitica
ypos=@(t)(16/45*(45*t+64*exp(-(45*t/64))-64))
yvel=@(t)(16-16*exp(-45*t/64))

yaccel=@(t,x,y)(N1-M1*y);

%% comparaciones entre metodos
yvelaprox=Integrate_RungeKutta4(inicial_t,final_t,dt,yaccel,inicial_vel);
yposaprox=SegEqDif(yaccel,inicial_t,final_t,dt,inicial_pos,inicial_vel);

plot(t,yvel(t))
hold
plot(t,yvelaprox)
plot(t,yposaprox(2,:))
title("Velocidad vs Tiempo")
xlabel("Tiempo")
ylabel("Velocidad de la barra")
legend("Solucion Analitica","Aproximacion de RK4","Aproximacion de Euler")
figure
plot(t,ypos(t))
hold
plot(t,yposaprox(1,:))
title("Posicion vs Tiempo")
xlabel("Tiempo")
ylabel("Posicion de la barra")
legend("Solucion Analitica","Aproximacion de Euler")
%% comparaciones para campos
M2=(campo(2)^2*ancho^2)/(masa*resistencia(1));
N2=(v_bateria*campo(2)*ancho)/(masa*resistencia(1));

yaccel2=@(t,x,y)(N2-M2*y);
yvelaprox2=Integrate_RungeKutta4(inicial_t,final_t,dt,yaccel2,inicial_vel);

M3=(campo(3)^2*ancho^2)/(masa*resistencia(1));
N3=(v_bateria*campo(3)*ancho)/(masa*resistencia(1));

yaccel3=@(t,x,y)(N3-M3*y);
yvelaprox3=Integrate_RungeKutta4(inicial_t,final_t,dt,yaccel3,inicial_vel);
figure
plot(t,yvelaprox)
hold
plot(t,yvelaprox2)
plot(t,yvelaprox3)
title("Velocidad vs Tiempo con diferentes intensidad de campo")
xlabel("Tiempo")
ylabel("Velocidad de la barra")
legend("B=2.5T","B=5T","B=1.5T")
%% comparacion para resistencia
M2=(campo(1)^2*ancho^2)/(masa*resistencia(2));
N2=(v_bateria*campo(1)*ancho)/(masa*resistencia(2));

yaccel2=@(t,x,y)(N2-M2*y);
yvelaprox2=Integrate_RungeKutta4(inicial_t,final_t,dt,yaccel2,inicial_vel);

M3=(campo(1)^2*ancho^2)/(masa*resistencia(3));
N3=(v_bateria*campo(1)*ancho)/(masa*resistencia(3));

yaccel3=@(t,x,y)(N3-M3*y);
yvelaprox3=Integrate_RungeKutta4(inicial_t,final_t,dt,yaccel3,inicial_vel);
figure
plot(t,yvelaprox)
hold
plot(t,yvelaprox2)
plot(t,yvelaprox3)
title("Velocidad vs Tiempo con diferentes Resistencias")
xlabel("Tiempo")
ylabel("Velocidad de la barra")
legend("R=2","R=9","R=0.5")
