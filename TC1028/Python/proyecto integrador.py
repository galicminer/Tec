seleccion=0 
def Cargar_Valores():
    nom=input("ingrese el nombre del libro :")
    auto=input("ingrese el nombre del autor :")
    editorial=input("ingrese la editorial :")
    with open("biblioteca.txt","r+") as file :
        file.write(nom+", "+auto+", "+editorial+"\n")
    
def Mostrar_Valores():
    with open("biblioteca.txt","r+") as file :
        lineas=file.readlines()
    for i in range(len(lineas)):
        print(str(i+1),".-",lineas[i])
def Buscar_Valores():
    x=input("ingrese el titulo del libro que desea buscar ")
    x=x.capitalize()
    encontrados=0
    with open("biblioteca.txt","r+") as file :
        lineas=file.readlines()
        clean=lineas.copy()
        for i in range(len(lineas)):
            lineas[i]=lineas[i].replace("\n","")
            lineas[i]=lineas[i].split(", ")
        for i in range(len(lineas)):
            lineas[i][0]=lineas[i][0].split(" ")
            for y in range(len(lineas[i][0])):
                if x==lineas[i][0][y]:
                   encontrados=encontrados+1
                   print(clean[i])
        if encontrados==0:
            print("no se han encontrado resultados")
while True:
    print("1.Capturar Libros\n2.Mostrar Libros\n3.Buscar Libro\n4.Salir\n")
    seleccion=int(input("seleccione que accion desea realizar: "))
    if seleccion==1:
        Cargar_Valores()
    elif seleccion==2:
        Mostrar_Valores()
    elif seleccion==3:
        Buscar_Valores()
    elif seleccion==4:
        break
    else:
        print("intente una opcion valida")
