from datetime import datetime # importamos una librería de fechas y horas
from pytz import timezone  # importamos la librería de zonas horarias

# definicion de datos. 
datos_persona = ['Carlos','Aramayo',19,1.75,72]

# se le dan nombres a cada variable dentro de la lista
nombre, apellido, edad, estatura, peso = datos_persona

# se realizan los calculos de indice de masa corporal
imc = peso / estatura ** 2 # Estatura al cuadrado (exponente 2)
"""
hola amigos de youtube

"""
#  se realiza la interacion con el usuario
print("Calculadora de IMC\n")
print("¡Hola,",nombre,apellido,"!\n")
print("Tu peso registrado es de:",peso,"kgs\n")
print("Tu estatura registrada es de:",estatura,"mts\n")


# se realiza las condicionales para saber si 
if imc <= 18.4: #imc es menor a 18.4
   a="Peso bajo"
elif imc >= 18.5 and imc < 25: # o si Imc esta en el rango [18.5,25[ se corrigio la formula original debido a que no tomaba encuentra valores mayores a 29.9 y menores a 25
   a="Peso normal"

elif imc >= 25 and imc <= 29.9: # o si Imc esta en el rango [25,29.9[
   a="Sobre peso"

else: # o cual quier mayor a 29.9
   a="Obesidad"
print("De acuerdo con estos datos tú IMC es",imc,"lo que indica:",a)

# se define el texto de guia.
guia = """
Cómo leer resultados

Nivéles de Peso de acuerdo al IMC:
IMC por debajo de 18.5: Peso bajo
IMC entre 18.5 – 24.9: Peso normal
IMC entre 25.0 – 29.9: Sobrepeso
IMC de más de 30.0: Obesidad
"""

# se muestra la guia al usario
print(guia)

# datos sobre el programa
zona_horaria=timezone('America/Mexico_city') #define la zona horaria
fecha_hora = datetime.now(zona_horaria) # se define la fecha y hora y es almacena en una variable.
fecha_hora_formato=fecha_hora.strftime("%B %d, %Y %H:%M:%S") #se le da formato a la fecha y hora
print("Created on:",fecha_hora_formato) #se muestra los datos de fecha y hora al usuario
autor= "Carlos Martin Aramayo Medina" #se define una cadena como el nombre del autor
print("Author:",autor) #se muestra el nombre del autor