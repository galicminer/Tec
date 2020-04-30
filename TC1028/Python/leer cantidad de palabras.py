def cantidad_palabras(x):
    x=x.replace("\n"," ")
    lista=x.split(" ")
    return len(lista)    

archivo=open("archivo1.txt","r")
linea1=archivo.read()
print(cantidad_palabras(linea1))
archivo.close()