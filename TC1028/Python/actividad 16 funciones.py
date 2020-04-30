def calcula_grado(x):
    if (x<=100 and x>=90):
        return "A"
    elif (x<=90 and x>=80):
        return "B"
    elif (x<=80 and x>=70):
        return "C"
    elif (x<=70 and x>=60):
        return "D"
    elif (x<=60 and x>=0):
        return "E"
    else:
        print("score incorrecto")
        return "Error"
        
nota=float(input("ingrese su nota "))
print("su nota es",calcula_grado(nota))
