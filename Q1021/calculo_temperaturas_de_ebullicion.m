presion=@(altura)(1013.25*(1-0.000022557*altura)^(5.2559)*759/1000)
tempfini=@(ti,pai,af,ksy)((ti-273.15*ksy*(pai-presion(af)))/(1+ksy*(pai-presion(af))))
ksyp=0.00010
ksyn=0.00012

AlturaFini=2667%%altura toluca
tempIni=78.37%%temperatura a buscar
altini=0%%altura inicial

presIni=presion(altini)
tempfini(tempIni,presIni,AlturaFini,ksyp)
%%
error=@(pro,exa)((abs(pro)-abs(exa))/exa*100)
error(73.12,ans)