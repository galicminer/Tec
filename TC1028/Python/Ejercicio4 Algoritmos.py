import math
print("ingrese la cantidad de metros a cubrir")
metros=int(input())
print("ingrese la cantidad de metros que cubre un litro")
pintura=int(input())
litros=math.ceil(metros/pintura)
print("se deben comprar " + str(litros) + " litros")


