function [fun,Coefsolfix]=Regresion(Dat,Grad)
B=[];
for n=0:1:Grad
    B=[B,Dat(:,1).^n];
end
Coefsol=(B'*B)\B'*Dat(:,2);
Coefsolfix=fliplr(reshape(Coefsol,1,[]));
fun=@(x)(polyval(Coefsolfix,x));
end