proc=1.60218*10^-19;

elec=-1.60218*10^-19
ke=8.9976*10^9;
%% 5
factor=5
q=factor*elec
r=0.0017
a=ke*q/r
b=ke*(q/(factor*r))-ke*(q/r)
c=ke*(q/(r/factor))-ke*(q/r)
%% 6
q1=70*10^-9
q2=-70*10^-9
q3=35*10^-9
q4=140*10^-9
m=2.07*10^-13
a=0.04
b=0.04
c=0.03
Electricpotenergy=ke*(((q1*q2)/(a+b))+((q1*q3)/(a))+((q2*q3)/(b)))
velo=sqrt(2*q4*ke*((q1/sqrt(a^2+c^2))+(q2/sqrt(b^2+c^2))+(q3/c))/m)
%% 7
q=8.5*10^-6
d=0.021 
v=ke*((-4*q/d)+(q/sqrt(4*d^2-(d^2)/4)))
r1=d*sqrt(15)/2
r2=d/2
m=(1/r1)-(1/r2)-(1/r2)
