import pandas as pd
dataset = pd.read_csv('Registro_nutricional.csv')
datos_consumo = dataset.iloc[2]
print(datos_consumo)