%%
R=7;
V1=6.9;
V2=4.5;
R1=10;
R2=5;
%a
I1=(V1/R1+V2/R2)/(2+R/R1+R/R2)
%b
V=V1-V2
%c
I1=(V1/R1-V2/R2)/(2+R/R1+R/R2)
V=V1+V2
%%
R=4*10^6;
C=2*10^-6;
E=25;
t=10;
%a
Timeconstant=R*C
%b
MaxCharge=E*C
%c
current=E/R*(exp(-t/(R*C)))*10^6
%%
R=14;
v1=25;
R1=10;
R2=10;
R3=5;
R4=5;
R5=R+R4;
R6=1/(1/R5+1/R3+1/R2);
R7=R1+R6;
Itotal=v1/R7;
%b
deltava_b=Itotal*R6
%a
IenR=deltava_b/(R5)
%%
Wat=0.53*1000;
v=120;
%a
a=Wat/v
%
R=v/A


