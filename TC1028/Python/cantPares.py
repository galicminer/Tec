contar=0
x=0
while x>=0:
    x=int(input("ingrese un numero "))
    if x%2==0:
        contar+=1
    
print("la cantidad de numeros pares es",contar)