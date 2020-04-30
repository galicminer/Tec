print("ingrese la cantidad de horas trabajadadas")
horas=float(input())
print("ingrese el pago de salario por horas")
phoras=float(input())
if horas>40:
    pextras=phoras*1.5
    extras=horas-40
    horas=horas-extras
    total=horas*phoras+extras*pextras
    print("la ganancia bruta es de : " + str(total))
else:
    total=horas*phoras
    print("la ganancia bruta es de : " + str(total))
