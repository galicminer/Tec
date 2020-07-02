close all %Cerrar ventanas antes de iniciar 
clc% limpiar variables 
syms t n %Variables simbolicas 
A= [0 1 2]; % Vector de intervalos, se ponen los intevalos desde donde esta %definida una funcion hasta donde termina este 
f=[t -t+2];%Amplitudes de las funciones 
f=sym(f);%Trasformando a simbolico el vector de funciones
T=max(A)-min(A); % calculo del periodo
wo=2*pi/(T);% Calculo de frecuencia fundamental 
Ao=0;% inicializo A0
for i=1:length(f) % cicle desde el numero 1, hasta el tamaño de f, se ejecuta por ser dos funciones 
    Ao=Ao +int(f(i),'t', A(i),A(i+1)); %integral de la funcion, respecto a t, del primer valor del intervalo hasta el segundo, para este caso, desde 0 hasta 1
end 
Ao=simplify(Ao/T); %simplifica los terminos entre los parentesis, esta funcion trata de encontrat una manera mas simple de cada elemento de un vector o unja matriz 
An = 0; 
for i=1:length(f)
     An = An +int(f(i)*cos(n*wo*t),A(i),A(i+1)); %calculo de
end
An=simplify (2*An/T); 
Bn=0; %Contador
for i=1:length(f) 
    Bn = Bn +int(f(i)*sin(n*wo*t), A(i), A(i+1)); 
end 
Bn = simplify (2*Bn/T); % lo siguiente simplifica los valores de los coeficientes
An = char(An); 
Bn = char(Bn); 
An = simplify(str2sym(strrep(char(An), 'sin(pi*n)', '0'))); 
Bn = simplify(str2sym(strrep(char(Bn), 'sin(pi*n)', '0')));
An = simplify(str2sym(strrep(char(An), 'cos(pi*n)', '(-1)^n' ))); 
Bn = simplify(str2sym(strrep(char(Bn), 'cos(pi*n)', '(-1)^n' ))); 
An = simplify(str2sym(strrep(char(An), 'sin(2*pi*n)', '0' ))); 
Bn = simplify(str2sym(strrep(char(Bn), 'sin(2*pi*n)', '0' )));
An = simplify(str2sym(strrep(char(An), 'cos(2*pi*n)', '1' ))); 
Bn = simplify(str2sym(strrep(char(Bn), 'cos(2*pi*n)', '1' ))); 
% 
disp('Ao') 
pretty(Ao)
disp('An')
pretty(An) 
disp('Bn') 
pretty(Bn) 
%Grafica 
x = linspace(min(A), max(A), 1000);  %Vector X que va desde el minimo valor de los intervalos hasta el maximo, con mil elementos de por medio 
fx = 0;%Contador
for i=1:length(A)-1%Bucle que va desde uno valor menos que el de los intervalos
    if mod(i, 2) == 1 
        fx = fx+((x>=A(i))&(x<=A(i+1))).*subs(f(i),x);% Se crean vectores logicos para graficar,en donde hay 1 la funcion existe, y al multioplicarse entre ellos se crea una funcion pulso. y la sustitucion de la funcion del valor correspondiente al valor de i evaluado en x 
    else 
    fx = fx+((x>A(i))&(x<A(i+1))).*subs(f(i),x);%evita confusiones dentro del programa, en evaluaciones de mayores con mayores e iguales y lo mismo para menores y menores e iguales 
    end 
end 
plot(x, fx, 'Linewidth', 2); hold on% se dibuja lo que se ha generado
plot(x+max(x)-min(x), fx , 'Linewidth', 2) 
plot(x-max(x)+min(x), fx, 'Linewidth', 2)% esta linea y la anterior dibujan los dos periodos, el anterior y el siguiente 
plot([max(x) max(x)],[fx(1) fx(end)],'linewidth', 2) 
plot([min(x) min(x)],[fx(end) fx(1)],'linewidth', 2)%dibujan por incrementos, para completar las graficas 
grid on%etiquetas 
xlabel ('\bfTIEMPO');%etiquetas
ylabel ('\bfAMPLITUD');%etiquetas 
title ('\bfGRAFICA DE LA FUNCION');%etiquetas
