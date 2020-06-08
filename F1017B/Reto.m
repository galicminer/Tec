%condiciones iniciales
inicial_pos=0;
inicial_vel=0;
inicial_t=0;
final_t=10;
pasos=1000;
dt=(final_t-inicial_t)/pasos;
%datos problema
v_bateria=6;
masa=0.1;n  
resistencia=2;
campo=2.5;
ancho=0.15;

M=(campo^2*ancho^2)/(masa*resistencia)
N=(v_bateria*campo*ancho)/(masa*resistencia)
f=@(x,y)(N-M*y)
y=Integrate_RungeKutta4(inicial_t,final_t,dt,f,inicial_vel)
t=inicial_t:dt:final_t
plot(t,y)