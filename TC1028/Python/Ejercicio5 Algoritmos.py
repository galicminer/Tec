import math
print("ingrese la cantidad de metros cuadrados a cubrir")
metros=float(input())
print("ingrese la cantidad de metros cuadrados que cubre un litro")
pintura=float(input())
litros=math.ceil(metros/pintura)
print("se deben comprar " + str(litros) + " litros")


