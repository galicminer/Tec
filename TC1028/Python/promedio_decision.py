suma=0
contar=0
while True:
    x=float(input("ingrese numero a promediar"))
    if x<=0:
        break
    suma+=x
    contar+=1
promedio=(suma/contar)
print("el promedio de los numeros positivos ingresados es",promedio)

