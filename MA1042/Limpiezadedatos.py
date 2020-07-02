import pandas as pd
dataset=pd.read_csv('Registronutricional.csv')
datos_consumo=dataset.iloc[:,3:8]
print(datos_consumo)
#limpieza de los datos en python
print(datos_consumo.isnull().any())
dataset=datos_consumo.fillna(method='ffill')
estadistica_descriptiva=dataset.describe()
print('Estadistica descriptiva de los datos:')
print(estadistica_descriptiva)