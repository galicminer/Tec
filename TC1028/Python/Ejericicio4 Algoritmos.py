print("Test de aptitud para la licencia de conducir")
print("Cuenta usted con una identificacion oficialsi/no")
iden=input()
print("ingrese su edad numericamente")
edad=int(input())
if(iden=="si")and(edad>=18):
    print("esta usted habilitado para recibir licencia")
else:
    print("usted no esta habilitado para recibir licencia")