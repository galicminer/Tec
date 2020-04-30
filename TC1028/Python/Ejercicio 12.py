import math
print("Ingrese T o t si desea calcular el area de un triangulo, C o c si desea calcular el area de un circulo")
respuesta=input()
if respuesta=="t" or respuesta=="T":
    print("ingrese la dimension de la base")
    base=int(input())
    print("ingrese la dimension de la altura")
    altura=int(input())
    area=base*altura
    print("el area del triangulo es :"+ str(area))
elif respuesta=="C" or respuesta=="c":
    print("ingrese la dimension del radio")
    radio=int(input())
    area=math.pi*radio*radio
    print("el area del circulo es :"+ str(area))
else:
    print("error elija una forma geometrica")
