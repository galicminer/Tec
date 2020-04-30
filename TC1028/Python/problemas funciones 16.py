def con_pies(x):
    cm=x*12*2.54
    return cm
def con_pul(x):
    cm=x*2.54
    return cm
def con_yar(x):
    cm=x*3*12*2.54
def programa():
    #entrada
    print("ingrese el numero correpondiente")
    print("1 para pies")
    print("2 para pulgadas")
    print("3 para yardas")
    x=float(input())
    y=float(input("ingrese la cantidad convertir"))
    if x==1:
        print(str(y)+ " equivale a " + str(con_pie(y)) + "centimetros")
    elif x==2:
        print(str(y)+ " equivale a " + str(con_pul(y)) + "centimetros")
    elif x==3:
        print(str(y)+ " equivale a " + str(con_yar(y)) + "centimetros")
    else:
        print("error indique un valor valido")
programa()
