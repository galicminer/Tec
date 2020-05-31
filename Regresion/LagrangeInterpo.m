function Funk=LagrangeInterpo(Dat)
syms x
n=size(Dat(:,1),1);
Funk=0;
for i=1:1:n
    L=1;
    for j=1:1:n
        if i~=j
            L=L*((x-Dat(j,1))/(Dat(i,1)-Dat(j,1)));      
        end
    end
    Funk=Funk+L*Dat(i,2);
end
end


