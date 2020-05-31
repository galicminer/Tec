x=[10 8 3 21 25 32 64 -1 -2 0]'
y=[7 5 4 25 21 4 8 2 8 1]'
unos=ones(size(x,1),1)
B=[unos,x,x.*x]
Sol=inv(B'*B)*B'*y
plot(x,y,'*')
t=-2:0.1:64;
f=@(x)(Sol(1)+Sol(2)*x+Sol(3)*x.^2)
hold
plot(t,f(t))
%%
function fun=LinealRegresion(Dat)
B=[ones(size(Dat(:,1),1),1),x];
Coefsol=inv(B'*B)*B'*Dat(:,2);
fun=@(x)(Coefsol(1)+Coefsol(2)*x)

end