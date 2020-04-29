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
angulosmaximo=0.3161;
torque= 349.80;%newton*metros
radioderuedas= 0.624611/2;%metros
fuerzasenlasruedas=torque/radioderuedas; %newton
radiodelvolante=0.2313;
radiomangueta=0.231338;
%funciones
angulodelvolante=@(t)angulosmaximo*sin(t);
desplazamientocrema=@(t)(radiodelvolante*angulodelvolante(t));
angulodirec=@(t)acos(sqrt(desplazamientocrema(t)^2/(2*radiomangueta^2)));
fuerzaarrastrex=@(vx,vy)(b*(vx^2+vy^2)^(1/2)*vx);
fuerzaarrastrey=@(vx,vy)(b*(vx^2+vy^2)^(1/2)*vy);
fuerzamotor=@(t)fuerzasenlasruedas*(cos(t));
fuerzamotorx=@(t)(fuerzamotor(t)*cos(angulodirec(t)));
fuerzamotory=@(t)(fuerzamotor(t)*sin(angulodirec(t)));
for n=inicio:dx:fin
    c=c+1;%se inicia un contador para saber cuantas veces se repite el loop
    acelx=(fuerzamotorx(n)+fuerzaarrastrex(velx,vely))/masa;
    acely=(fuerzamotory(n)+fuerzaarrastrey(velx,vely))/masa;
    velx=(velx+(acelx*dx)); % calculo del la velocidad a partir de la funcion de la aceleracion
    vely=(vely+(acely*dx));
    posx=(posx+(velx*dx));
    posy=(posy+(vely*dx)); % calculo de la posicion a partir de la velocidad en ese instante
    vecacelx(c)=acelx;%se guarda en un vector la aceleracion
    vecacely(c)=acely;
    vecvelx(c)=velx; %se guarda en un vector la velocidad
    vecvely(c)=vely;
    vecposx(c)=posx; %se guarda en un vector la posicion
    vecposy(c)=posy;
    vecacel(c)=(acelx^2+acely^2)^(1/2);
    vecvel(c)=(velx^2+vely^2)^(1/2);
    vecpos(c)=(posx^2+posy^2)^(1/2);
    vect(c)=n;%se guarda los pasos que toma el for
end
figure;
plot(vect,vecacelx);
xlabel('tiempo');
ylabel('aceleracion en x');
grid;
figure;
plot(vect,vecacely);
xlabel('tiempo');
ylabel('aceleracion en y');
grid;
figure;
plot(vect,vecvelx);
xlabel('tiempo');
ylabel('velocidad en x');
grid;
figure;
plot(vect,vecvely);
xlabel('tiempo');
ylabel('velocidad en y');
grid;
figure;
plot(vect,vecposx);
xlabel('tiempo');
ylabel('posicion en x');
grid;
figure;
plot(vect,vecposy);
xlabel('tiempo');
ylabel('posicion en y');
grid;
figure;
xlabel('posicion x');
ylabel('posicion y');

%for i= 1:num
 %   vecinteposx(i)=vecposx(i);
  %  vecinteposy(i)=vecposy(i);
   % vecintet(i)=vect(i);
    plot3(vecposx,vecposy,vect);
    %drawnow;
    %pause(0.000001);
    grid;
%end