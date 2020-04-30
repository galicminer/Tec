def crearlista():
    num=int(input("ingrese la cantidad de numeros que desea ingresar"))
    suma=0
    nums=[]
    for i in range(1,num+1):
        nuevo=float(input("ingrese el valor "+str(i)+":"))
        nums.append(nuevo)
        suma+=nuevo
    promedio=suma/num
    for i in range(1,num):
        desviacion=(abs(nums[i]-promedio))**2
    desviacionestandar=(desviacion/num)**(1/2)
    print("la desviacion estandar es",desviacionestandar)
crearlista()