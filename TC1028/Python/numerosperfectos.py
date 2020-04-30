import random
x=random.randint(0,100)
i=x-1
suma=0
def checkfordivisors(a,b):
    if a%b==0:
        return b
    else:
        return 0

while i:
    suma+=checkfordivisors(x,i)
    i-=1
if suma==x:
    print(x,"es un numero perfecto")
else:
    print(x,"no es un numero perfecto")