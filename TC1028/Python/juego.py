import random
def check(x,y):
    if(x>y):
        return 1
    elif(x<y):
        return-1
    else:
        return 0
num=random.randint(0,99)
print("adivine el numero que se encuentra entre 0 y 99")
respuesta=3
intentos=0
while respuesta!=0:
    guess=int(input("ingrese su intento "))
    respuesta=check(guess,num)
    if respuesta==1:
        print("el numero es menor que el de su intento")
    elif respuesta==-1:
        print("el numero es mayor que el de su intento")
    intentos+=1
print("usted ha adivinado en",str(intentos),"intentos")
    
    