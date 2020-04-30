import os 
archivo = open(os.fspath("C:\Users\carlo\Documents\Tec\TC1028\Python\archivos"),"w")
archivo.write("este es un archivo de texto\n")
archivo.write("esta es la segunda linea")
archivo.close()