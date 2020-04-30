def funcion(prin,sub):
    dividido=prin.replace(sub,"")
    return dividido
def ingreso():
    lineas=input("ingrese la linea de texto ")
    return lineas
def programa():
    print("ingrese la linea principal")
    prici=ingreso()
    print("ingrese la lineas secundaria")
    secun=ingreso()
    nuevalinea=funcion(prici,secun)
    print("su cadena procesada es:\n"+nuevalinea)
programa()      