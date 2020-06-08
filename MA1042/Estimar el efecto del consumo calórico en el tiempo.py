import pandas as pd
import numpy as np 
from pathlib import Path

#Importación de datos
ubicacion=Path("C:/Users/Carlos Aramayo/Google Drive/Estudios/Tec/2do Semestre/MA1042/Registro_nutricional.csv")
dataset=pd.read_csv(ubicacion)
datos_consumo=dataset.iloc[:,3]
#Calculo de promedio 
idate=dataset.iloc[0,0]
fdate=dataset.iloc[-1,0]
dias=fdate-idate
suma_consumo=np.sum(datos_consumo)
calorias_promedio=suma_consumo/dias

print("Total de dias de consumo en los datos: ",dias)
print("Total de calorias consumidas:",suma_consumo)
#ingreso de datos personales:

peso=int(input("Ingresa tu peso en kilogramos: "))
altura=int(input("Ingresa tu altura en centimetros: "))
edad=int(input("Ingresa tu edad en años: "))
genero=input("Ingresa tu género, F(Fememino)/M(Masculino): ")
Actividad=int(input("Califica tu actividad del 1 al 5, siendo 1 sedentario, y 5 siendo entrenamiento vigoroso 2 veces al dia:"))
#casos condicionales para el calculo
if(Actividad==1):
    Act=1.2
elif(Actividad==2):
    Act=1.375
elif(Actividad==3):
    Act=1.550
elif(Actividad==4):
    Act=1.725
elif(Actividad==5):
    Act=1.9
if(genero=="F"):
    calorias_requeridas=Act*(-161+(9.99*peso)+(6.25*altura)-(4.92*edad))
elif(genero=="M"):
    calorias_requeridas=Act*(5+(9.99*peso)+(6.25*altura)-(4.92*edad))

print("Promedio de calorias consumidads en",dias,"dias es",calorias_promedio)
print("Con base en tus datos, tu consumo de calorias al dia debe ser de:",calorias_requeridas)
dif=calorias_promedio-calorias_requeridas
efecto_anual=dif*450/3500*365/1000
print("Siguiendo este consumo, en un año, tu cambio en masa corporal sera de:",efecto_anual,"kg")