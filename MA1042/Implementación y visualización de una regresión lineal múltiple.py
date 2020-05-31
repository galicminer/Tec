import pandas as pd
import numpy as np 
import matplotlib.pyplot as plt 
from pathlib import Path

from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn import metrics

ubicacion=Path("C:/Users/Carlos Aramayo/Google Drive/Estudios/Tec/2do Semestre/MA1042/Registro_nutricional.csv")
dataset=pd.read_csv(ubicacion)
datos_consumo=dataset.iloc[:,3:8]
print(datos_consumo)


estadistica_descriptiva=datos_consumo.describe()
print('Estadistica descriptiva de los datos:')
print(estadistica_descriptiva)

print(datos_consumo.isnull().any())
dataset=datos_consumo.fillna(method='ffill')


X=dataset[['Carbohidratos (g)','Lípidos/grasas (g)','Proteína (g)']].values
Y=dataset['Calorías (kcal)'].values

X_train,X_test,Y_train,Y_test=train_test_split(X,Y,test_size=0.2,random_state=0)

modelo_regresion=LinearRegression()
modelo_regresion.fit(X_train,Y_train)

X_columns=['Carbohidratos (g)','Lípidos/grasas (g)','Proteína (g)']

coeff_df=pd.DataFrame(modelo_regresion.coef_,X_columns,columns=['Coeficientes'])
print(coeff_df)

Y_pred=modelo_regresion.predict(X_test)
Validacion=pd.DataFrame({'Actual':Y_test,'Prediccion':Y_pred})
Muestra_validacion=Validacion.head(25)
print(Muestra_validacion)

print("Raiz de la desviacion media al cuadrado:",np.sqrt(metrics.mean_squared_error(Y_test,Y_pred)))
Muestra_validacion.plot.bar(rot=0)
plt.title("Comparación de calorías actuales y de predicción")
plt.xlabel("Muestra de alimentos")
plt.ylabel("Cantidad de calorías")
plt.ylabel("Cantidad de calorías")
plt.show()