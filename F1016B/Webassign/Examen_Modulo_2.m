%examen
%% 1
c1=8;
c2=8;
v=22;
q1=v*c1
%b
qf2=q1*(1/(c1/c2+1))
qf1=q1-qf2
%c
q2=v*c2;
deltaq2=q2-qf2
%% 2
c1=27*10^-6;
c2=35*10^-6;
v=15;
%a
cf=1/(1/c1+1/c2)
%b
Ue=cf*v^2/2
%c
qt=cf*v;
ue1=qt^2/(2*c1)
ue2=qt^2/(2*c2)
%f
cp=c1+c2;
vp=sqrt(2*Ue/cp)
%%3
%% 4
R=6.4;
V1=6.7;
V2=4.5;
R1=10;
R2=5;
%a
I1=(V1/R1+V2/R2)/(2+R/R1+R/R2)*1000
%b
V=V1-V2
%c
I1=(V1/R1-V2/R2)/(2+R/R1+R/R2)*1000
V=V1+V2