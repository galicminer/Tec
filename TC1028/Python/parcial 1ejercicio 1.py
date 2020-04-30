a=int(input("cuantos numeros desea analizar"))
for i in range (0,a):
    b=float(input("ingrese el numero"))
    if i == 0:
        mayor=b
        menor=b
    elif (b>mayor):
        mayor=b
    elif b<menor:
        menor=b
print("el numero mayor es", mayor)
print("el numero menor es", menor)