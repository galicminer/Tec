a=int(input("ingrese cuantas filas desea "))
for i in range(1,a+1):
    print((a-i)//2*" "+i*"*")
print(a//2*" "+"*")