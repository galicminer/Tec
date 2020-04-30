Funciondelcambio=@(x,y)(2*x-3*y+1);
y=Integrate_Euler(0,3,0.2,Funciondelcambio,1);
x=0:0.2:3;
plot(x,y);
hold on;
SolucionAnalitica=@(x)((2/3)*x+(1/9)+(8/9)*exp(-3*x));
y1=SolucionAnalitica(x);
plot(x,y1)
legend('Aproximacion Numerica','Solucion Exacta')