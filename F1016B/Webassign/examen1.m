proc=1.60218*10^-19;
elec=-1.60218*10^-19;
ke=8.9976*10^9;
%% 1
q=5.22*10^-9;
qx=6*10^-9;
qy=-3.00*10^-9;
dx=0.285;
dy=0.1;
fx=-ke*q*qx/dx^2;
fy=ke*q*qy/dy^2;
total=sqrt(fx^2+fy^2)
ang=rad2deg(atan(fy/fx))+180
%% 2
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
%% 3
factor=5;
q=factor*elec;
r=0.0038;
a=ke*q/r
b=ke*(q/(factor*r))-ke*(q/r)
c=ke*(q/(r/factor))-ke*(q/r)
%% 4
q1=-1.6*10^-6
q2=6.4*10^-6
a=(q1+q2);
b=-2*q1;
c=q1;
x=(-b-sqrt(b^2-4*a*c))/(2*a)
%% 5
long=0.12
charge=-23*10^-6
dist=0.32
dens=charge/long
lowlim=dist-long/2
highlim=dist+long/2
E=ke*dens*((-1/highlim)-(-1/lowlim))
%% 6
long=0.12;
radio=long/pi;
charge=-7.5*10^-6;
dens=charge/long;
angini=pi/2;
angfinal=-pi/2;
campo=ke*dens*(sin(angfinal)-sin(angini))/radio
newcampo=2*campo
