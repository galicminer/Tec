errores=0.1;
errores1=0.001;
%% a)
f=@(t)(t^2*sin(0.2*t)-1);
f1=@(t)(t*(2*sin(0.2*t)+0.2*t*cos(0.2*t)));
% e=0.1
solf_1=RootMet_Bisec(-2.5,8.3,f,errores)
%primera condiciion
solf_2=RootMet_NewRap(3,f,f1,errores)
solf_3=RootMet_Sec(-2.5,4,f,errores)
%segunda condicion
solf_2=RootMet_NewRap(4,f,f1,errores)
solf_3=RootMet_Sec(-4,2,f,errores)
% e=0.001
solf_1=RootMet_Bisec(-2.5,8.3,f,errores1)
%primera condiciion
solf_2=RootMet_NewRap(3,f,f1,errores1)
solf_3=RootMet_Sec(-2.5,4,f,errores1)
%segunda condicion
solf_2=RootMet_NewRap(4,f,f1,errores1)
solf_3=RootMet_Sec(-4,2,f,errores1)
%% b)
g=@(t)(-exp(-2*t)+20);
g1=@(t)(2*exp(-2*t));
% e=0.1
solg_1=RootMet_Bisec(-5,0,g,errores)
%primera condiciion
solg_2=RootMet_NewRap(-3,g,g1,errores)
solg_3=RootMet_Sec(-3,-2,g,errores)
%segunda condicion
solg_2=RootMet_NewRap(-4,g,g1,errores)
solg_3=RootMet_Sec(-4,-3,g,errores)
% e=0.001
solg_1=RootMet_Bisec(-5,0,g,errores1)
%primera condiciion
solg_2=RootMet_NewRap(-3,g,g1,errores1)
solg_2=RootMet_NewRap(-4,g,g1,errores1)
%segunda condicion
solg_3=RootMet_Sec(-3,-2,g,errores1)
solg_3=RootMet_Sec(-4,-3,g,errores1)
%% c)
h=@(t)((t^2*sin(0.2*t)+4)-(-exp(-0.5*t)+5))
a=-1.5;
b=4;
RootMet_Bisec(1,4,h,errores1)
RootMet_Sec(a,-1,h,errores1)
