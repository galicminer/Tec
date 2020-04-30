import numpy as np 
def cargar_vectores(x,y):
    vector=np.zero(x,y)
    for i in range(x):
        for o in range(y):
            vector[i][o]=int(input())
cargar_vectores(2,2)

            