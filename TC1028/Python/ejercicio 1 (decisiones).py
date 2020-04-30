print("ingrese los 3 lados del triagulo")
A = int(input())
B = int(input())
C = int(input())
if (A+B>C) and (A+C>B) and (B+C>A):
    if (A==B)and(A==C):
        print("este triangulo es equilatero")
    elif(A==B) or (A==C) or (C==B):
        print("este triangulo es isoceles")
    else:
        print("este triangulo es escaleno")
else:
    print("los datos son incorrectos")
    