def funcionexamen1(ListaA,ListaB,Comparador):
    ListaC=[]
    for i in range(0,len(ListaA)):
        if ListaA[i]>Comparador:
            ListaC.append(ListaA[i])
    for i in range(0,len(ListaB)):
        if ListaB[i]<Comparador:
            ListaC.append(ListaB[i])
    return ListaC
A=[1,-2,3,4,-5]
B=[-6,7,-8,9,0]
num=3
print(funcionexamen1(A,B,num))
        