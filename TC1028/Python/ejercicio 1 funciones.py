def convert_segs(horas,minu,segs):
    total = horas*3600+minu*60+segs
    return total

print("ingrese las horas")
ho=int(input())
print("ingrese los minutos")
mi=int(input())
print("ingrese los segudos")
seg=int(input())
total=segs(ho,mi,seg)
print("los segundos totales son ",str(total))