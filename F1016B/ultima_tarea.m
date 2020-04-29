t=0:0.5:7.5
Q=[98 86 75 66 59 53 48 44 40 37 35 33 32 31 29 28]
%Graficacion
comet(t,Q)
title('Carga vs. Tiempo')

Efit=polyfit(Q,DQ,1)
QvsQ'=polyval(Efit,Q)
plot(QvsQ'
