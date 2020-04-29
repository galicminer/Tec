clear all
c=[1,5,3];
d=[2,10,20];
x=[4,4,1];

for t=1:1:3
    p=(c(t)*x(t)+2*d(t))/(c(t)*x(t)-d(t))
end

x=[2,10,25];
y=[4,5,-2];
z=[3,9,-1.5];

for t=1:1:3
    q=2*log10(x(t))+cos(pi)+abs(y(t)^2-z(t)^2)+sqrt(5*y(t)*z(t))
end
c=[0.3,0.8];
l=0.01;
r=100;
for t=1:1:2
    f=sqrt((1/(l*c(t)))-(r^2/(4*c(t)^2)))
end
