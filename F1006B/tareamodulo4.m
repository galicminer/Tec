%% 


%Carlos Martin Aramayo Medina A01369686
%Karen Larios Quintero Mármol A01551898
%Julio Antonio Aguirre Salazar  A01769440
%Julio Cesar Pazaran Corvera A01366684
%Santiago Sanchez Zepeda A01367360
%Rafeel Dolores Becerril A01769165


%%velocidad constante
clear all
inicio=0;
fin=10;
num=100;
dt=(fin-inicio)/num;
f=@(x)(3);
vel=2;
c=0;
for n=inicio:dt:fin
    c=c+1
    vel=vel+f(n)*dt
    vecsol(c)=vel
    vect(c)=n;
end
plot(vecsol)

%% aceleracion constante
clear all
inicio=0;
fin=1000;
num=10000;
dt=(fin-inicio)/num;
f=@(x)(3);
vel=2;
pos=1
c=0;
for n=inicio:dt:fin
    c=c+1;
    vel=vel+f(n)*dt;
    pos=pos+vel*dt;
    vecvel(c)=vel;
    vecpos(c)=pos;
    vect(c)=n;
end
hold on
plot(vect,vecpos)
plot(vect,vecvel)
%%
close all
clc, clear all
%datos del analisis
inicio=0;
fin=100000;
num=100000;
dx=(fin-inicio)/num;
velx=2;%velocidad en x inicial
posx=3;%posicion en x inicial
vely=4;%velocidad en y inicial
posy=5;%posicion en y inicial
c=0;
%datos del vehiculo
b=-(1/2)*0.32*2.64*1.22;
masa=1421;
torque= 349.80;%newton*metros
radioderuedas= 0.624611/2;%metros
fuerzasenlasruedas=torque/radioderuedas; %newton
%funciones
angulodirec=0.3161;
fuerzaarrastrex=@(vx,vy)(b*(vx^2+vy^2)^(1/2)*vx);
fuerzaarrastrey=@(vx,vy)(b*(vx^2+vy^2)^(1/2)*vy);
fuerzamotor=fuerzasenlasruedas;
fuerzamotorx=@(t)(fuerzamotor*cos(angulodirec));
fuerzamotory=@(t)(fuerzamotor*sin(angulodirec));
for n=inicio:dx:fin
    c=c+1;%se inicia un contador para saber cuantas veces se repite el loop
    acelx=(fuerzamotorx(n)+fuerzaarrastrex(velx,vely))/masa;
    acely=(fuerzamotory(n)+fuerzaarrastrey(velx,vely))/masa;
    velx=(velx+(acelx*dx));
    vely=(vely+(acely*dx));% calculo del la velocidad a partir de la funcion de la aceleracion
    posx=(posx+(velx*dx));
    vecacelx(c)=acelx;%se guarda en un vector la aceleracion
    vecvelx(c)=velx; %se guarda en un vector la velocidad
    vecposx(c)=posx; %se guarda en un vector la posicion
    vect(c)=n;%se guarda los pasos que toma el for
end
plot(vect,vecacelx);
xlabel('tiempo');
ylabel('aceleracion en x');

