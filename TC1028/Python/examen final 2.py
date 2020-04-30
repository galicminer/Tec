def Convertirasiglas(noprocesada):
    noprocesada=noprocesada.split(" ")
    sigla=""
    for i in range(len(noprocesada)):
        sigla=sigla+noprocesada[i][0]
    sigla=sigla.upper()
    return sigla

def programa():
    cadena=input("ingrese la cadena de la cual desea conseguir la siglas:\n")
    siglas=Convertirasiglas(cadena)
    print("las siglas de",cadena,"son",siglas)
programa()