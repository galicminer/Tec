a=int(input("ingrese que cantidad de valores desea que tenga sus lista "))
s=[]
nmax=0
pmax=0
nmin=0
pmin=0
for i in range(a):
    b=float(input("ingrese el numero "+str(i+1)+" "))
    s.append(b)
print(s)

for i in range(a):
    if s[i]>nmax:
        nmax=s[i]
        pmax=i
    if s[i]<nmin:
        nmin=s[i]
        pmin=i
print("el maximo es",nmax,"con posicion",pmax)
print("el minimo es",nmin,"con posicion",pmin)