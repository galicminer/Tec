def pedirdatos():
    a=-1
    suma=0
    while a!=0:
        a=float(input("ingrese el costo de los daños"))
        suma+=a
    return suma
def calculodeducible(x):
    cubierto=0.9*x
    return cubierto
def calculototal():
    Total=pedirdatos()
    if Total>300:
        pagadoporseguro=calculodeducible(Total-300)
        print ("el seguro cancelara y cubrira", pagadoporseguro, "pesos")
    else:
        print("el seguro no cubrira")
calculototal()