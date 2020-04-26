%Código para el cálculo de la eficiencia
function calculos_ciclo_stirling
clc;clear all; format compact;
R = 8.314; % [=] J/(mol.K) ó (Pa.m^3)/(mol.K)
n=1;
Cv = (5/2)*R;
Vi = 6.03*10^-6; 
Vf = 0.0001481;
TL = 298.15;
TH = 390.15;

DU12 = Cv*(TL - TH)/1000;
Q12 = Cv*(TL - TH)/1000; 
W12 = 0;

DU23 = 0;
Q23 = (n*R*TL*log(Vi/Vf))/1000;
W23 = (n*R*TL*log(Vi/Vf))/1000;

DU34 = Cv*(TH - TL)/1000;
Q34 = Cv*(TH - TL)/1000;
W34 = 0;

DU41 = 0;
Q41 = (n*R*TH*log(Vf/Vi))/1000;
W41 = (n*R*TH*log(Vf/Vi))/1000;

DU = DU12 + DU23 + DU34 + DU41;
Q = Q12 + Q23 + Q34 + Q41;
W = W12 + W23 + W34 + W41;

Matrizenergetica = [DU12 Q12 W12; DU23 Q23 W23; DU34 Q34 W34; DU41 Q41 W41; DU Q W]

V1 = Vf;
T1 = TH;
P1 = n*R*T1/V1;

V2 = Vf;
T2 = TL;
P2 = n*R*T2/V2;

V3 = Vi;
T3 = TL;
P3 = n*R*T3/V3;

V4 = Vi;
T4 = TH;
P4 = n*R*T4/V4;

MatrizPVT = [P1 V1 T1; P2 V2 T2; P3 V3 T3; P4 V4 T4]

EficienciaStirling = W/Q41*100
EficienciaCarnot = (1 - TL/TH)*100

VectorV = linspace(Vi,Vf,100);
VectorP34 = linspace(P3,P4,100);
VectorVi = linspace(Vi,Vi,100);
VectorP12 = linspace(P1,P2,100);
VectorVf = linspace(Vf,Vf,100);
PL = n*R*TL./VectorV;
PH = n*R*TH./VectorV;
figure(1),plot(VectorV,PL,VectorV,PH,VectorVi,VectorP34,VectorVf,VectorP12),grid
xlabel('v'),ylabel('P')
legend()