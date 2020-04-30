def sumadecuadrados():
    entrada=int(input("ingrese el limite mayor"))
    suma=0
    for i in range(0,entrada+1):
        suma=suma+i**2
    print("la suma de los cuadrados hasta",entrada,"es",suma)
sumadecuadrados()
        