AlturaFini=2667
tempIni=73.7
altini=2432
presion=@(altura)(1013.25*(1-0.000022557*altura)^(5.2559)*759/1000)
ksy=0.00010
presIni=presion(altini)
tempfini=@(ti,pai,af)((ti-273.15*ksy*(pai-presion(af)))/(1+ksy*(pai-presion(af))))
tempfini(tempIni,presIni,AlturaFini)