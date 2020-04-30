print("ingrese el primer numero de la operacion")
x=int(input())
print("ingrese el signo la operacion a realizarse")
operador=input()
print("ingrese el segundo numero de la operacion")
y=int(input())
if operador == "**":
    resultado=(x**y)
    print("el resultado es: " + str(resultado))
elif operador == "*":
    resultado = (x*y)
    print("el resultado es: " + str(resultado))    
elif operador == "/":
    if y==0:
        print("la division entre 0 no esta permitida")
        print("es resultado es indefinido")
    else:
        resultado=(x/y)
        print("el resultado es: " + str(resultado))    
elif operador == "%":
    if y==0:
        print("la division entre 0 no esta permitida")
        print("es resultado es indefinido")
    else:
        resultado=(x%y)
        print("el resultado es: " + str(resultado))
elif operador == "+":
    resultado=(x+y)
    print("el resultado es: " + str(resultado))
elif operador == "-":
    resultado=(x-y)
    print("el resultado es: " + str(resultado))
else:
    print("ERROR: ingrese un operador valido")
    print("posibles operadores : **,*,/,%,+,-")
    
    
