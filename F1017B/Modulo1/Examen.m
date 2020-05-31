mu=pi*4*10^-7;
Lb=0.75;
dso=0.1;
dca=0.001;
Resistividad=1.7*10^-8;
B=7.2*10^-3;
Numesp=Lb/dca
A=pi*(dca/2)^2
L=Numesp*2*pi*(dso/2+dca/2)
I=(B*Lb)/(Numesp*mu)
R=Resistividad*L/A
W=I^2*R

In=22
B=mu*In*Numesp/Lb