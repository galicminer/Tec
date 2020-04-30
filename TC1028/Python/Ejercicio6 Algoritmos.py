import math
print("ingrese el radio de la esfera")
radio=float(input())
area=4*math.pi*math.pow(radio,2)
volumen=4/3*math.pi*math.pow(radio,3)
print("el area de la esfera es: "+str(area))
print("el volumen de las esferas: "+str(volumen))