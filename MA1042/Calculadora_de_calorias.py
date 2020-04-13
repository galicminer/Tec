from datetime import datetime
from pytz import timezone

Nom_program="Calculadora de calorias"
Nom_alim=input("Coloque el nombre del alimento: ")
carbo=float(input("ingrese la cantidad de calorias por gramo: "))
lipid=float(input("ingrese la cantidad de lipidos por gramo: "))
protei=float(input("ingrese la cantidad de proteinas por gramo:"))

calorias=carbo*4+lipid*9+protei*4
print(Nom_program,'\n'+Nom_alim,": ",calorias)

zona_horaria=timezone('America/Mexico_city')
fecha_hora = datetime.now(zona_horaria)
fecha_hora_formato=fecha_hora.strftime("%B %d, %Y %H:%M:%S")
print("Created on:",fecha_hora_formato)
autor= "Carlos Martin Aramayo Medina"
print("Author:",autor)