                %Descarga de un capacitor
clear all;
clc;
%Vectores de variables a utilizar
t=0:0.5:7.5;
Q=[98 86 75 66 59 53 48 44 40 37 35 33 32 31 29 28];
Qprim=[98 86 75 66 59 53 48 44 40 37 35 33 32 31 29];
tprim=0:0.5:7;

%Tablulación de Derivadas
for n=1:1:15;
    yei=(Q(n+1)-Q(n))/(t(n+1)-t(n));
    T(n)=yei;
end

%Graficación
% comet(t,Q);
% title('Carga vs. Tiempo')
% grid
% (xlabel('Tiempo de Descarga'));
% (ylabel('Carga de Capacitor'));
% hold;
% plot(t,Q,'*');
% hold off;

%Rectas de Regresión
% %Recta de Carga
figure ('Name','Rectas Regresión Q(t) & Q´(t)')
% %Recta de Carga
x=polyfit(tprim,Qprim,1);
Q_aprox=polyval(x,tprim);
plot(tprim,Q_aprox)
hold on;
plot(tprim,Qprim,'*')
%Recta de Derivada de Carga
c=polyfit(tprim,T,1);
Qprim_aprox=polyval(c,tprim);
plot(tprim,Qprim_aprox)
hold on;
plot(tprim,T,'*')
(xlabel('Tiempo transcurrido'));
(ylabel('Derivada de Carga / Carga '));
%Regresión entre las cargas
figure
ya=polyfit(T,Qprim,1)
aprox=polyval(ya,T);
plot(T,Qprim,'*')
hold on;
plot(T,aprox)
title('Recta regresión Q´(t) vs. Q(t)');
(xlabel('Derivada de Carga de Capacitor Q(t)'));
(ylabel('Carga de capacitor Q´(t)'));
grid

%Recta de regresión valuada
figure ('Name','Prima vs. Carga')
plot(T,Qprim);
title('Carga Prima vs. Carga')
grid
(xlabel('Derivada de Carga de Capacitor Q(t)'));
(ylabel('Carga de capacitor Q´(t)'));

