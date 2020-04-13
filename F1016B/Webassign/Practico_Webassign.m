proc=1.60218*10^-19;
prom=1.67262*10^-27;
ke=8.9976*10^9;
g=6.674*10^-11;
%% ejercicio1
d=2.02*10^-15
F=ke*proc*proc/d^2


%% ejercicio2
f1=2.62*10^-6
d1=0.0134
d2=0.019
u=f1*d1^2/ke
f2=ke*u/d2^2
%% ejercicio3
d=4.3*10^-10
fe=ke*proc^2/d^2
fg=g*prom^2/d^2
R=fe/fg
rm=sqrt(g/ke)
%% ejercicio 5
q = 4.7*10^-9   
r12 = 0.235
qy=-3*10^-9
qx=6*10^-9
ly=0.1
fx=ke*q*qx/r12^2
fy=ke*q*qy/ly^2
ft=sqrt(fx^2+fy^2)
a=atand(fx/fy)-90
%% ejercicio 6
L=0.470
qc=7*10^-6
q1=1.2*10^-6
q2=4*10^-6
f1=ke*q1*qc/L^2
f2=ke*q2*qc/L^2
tx=cosd(60)*(f1+f2)
ty=sind(60)*(f1-f2)
ft=sqrt(tx^2+ty^2)
a= atand(ty/tx)
%% ejercicio 7
L=0.260
q1=-12*10^-9
q2=18*10^-9
f1=ke*q1*q2/L^2
a=(q1+q2)/2
fb=ke*a*a/L^2

%% ejercicio 8
q1=5.70*10^-6
q2=1.57*10^-6
q3=2.06*10^-6
d1=0.03
d2=0.02
f12=ke*q1*q2/d1^2
f13=ke*q1*q3/(d1+d2)^2
f23=ke*q2*q3/d2^2
qe1=f13-f12
qe2=f23+f12
qe3=f13+f23
