inicio=-100;
fin=100;
paso=0.01;
t=inicio:paso:fin;
f=@(t)(t.^5+2);
c=1;
for n=inicio:paso:fin
deriva(c)=((f(n)-f(n-paso))/paso);
c=c+1;
end
plot(t,deriva)
hold on;
plot(t,f(t))

