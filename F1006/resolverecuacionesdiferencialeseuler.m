clear all
inicio=0;
fin=1000;
num=100;
dx=(fin-inicio)/num;
f=@(x)(x^2);
sol=32;
c=0;
for n=inicio:dx:fin
    c=c+1;
    sol=sol+f(n)*dx;
    vecsol(c)=sol;
    vect(c)=n;
end
plot(vect,vecsol)
plot(vect,vecsol)
%%
clear all
inicio=0;
fin=1000;
num=100;
dx=(fin-inicio)/num;
f=@(x)(3);
vel_ini=32;
pos_ini=2;
c=0;
for n=inicio:dx:fin
    c=c+1 ;%se inicia un contador para saber cuantas veces se repite el loop
    vel_ini=vel_ini+f(n)*dx; % calculo del la velocidad a partir de la funcion de la aceleracion
    pos_ini=pos_ini+vel_ini*dx; % calculo de la posicion a partir de la velocidad en ese instante
    vecvel(c)=vel_ini; %se guarda en un vector la velocidad
    vecpos(c)=pos_ini; %se guarda en un vector la posicion
    vect(c)=n;%se guarda los pasos que toma el for
end
hold on;
grid;
plot(vect,vecvel)
plot(vect,vecpos)
%%
clear all
inicio=0;
fin=1000;
num=100;
dx=(fin-inicio)/num;

vel_ini=3;
pos_ini=2;
c=0;
%datos del vehiculo 
angulodirec=pi
velx=@(t)vel_ini*cos(angulodirec)%modificar para incluir el tiempo
vely=@(t)vel_ini*sen(angulodirec)
fuerzaarrastrex=@(t)(b*(velx(t)^2+vely(t)^2)^(1/2)+velx(t));
fuerzaarrastrey=@(t)(b*(velx(t)^2+vely(t)^2)^(1/2)+velb(t));
fuerzamotor=355.99
fuerzamotorx=@(t)(fuerzamotor*cos(angulodirec)
fuerzamotory=@(t)(fuerzamotor*sen(angulodirec)

for n=inicio:dx:fin
    c=c+1 ;%se inicia un contador para saber cuantas veces se repite el loop
    
    vel_inix=vel_inix+f(n)*dx; % calculo del la velocidad a partir de la funcion de la aceleracion
    pos_iniy=pos_iniy+vel_ini*dx; % calculo de la posicion a partir de la velocidad en ese instante
    vecvel(c)=vel_ini; %se guarda en un vector la velocidad
    vecpos(c)=pos_ini; %se guarda en un vector la posicion
    vect(c)=n;%se guarda los pasos que toma el for
end

