Funcion billetes(cant)
	Definir bill, rest Como Entero
	
	Si cant >= 100000 Entonces
		bill = (cant-(cant%100000))/ 100000
		rest = (cant%100000)
		Escribir bill " Billetes de $100.000"
		Si rest >= 50000 Entonces
			bill = (rest-(rest%50000))/ 50000
			rest = (rest%50000)
			Escribir bill " Billetes de $50.000"
		FinSi
		Si rest >= 20000 Entonces
			bill = (rest-(rest%20000))/20000
			rest = (rest%20000)
			Escribir bill " Billetes de $20.000"
		FinSi
		Si rest >= 10000 Entonces
			bill = (rest-(rest%10000))/ 10000
			Escribir bill " Billetes de $10.000"
		FinSi
	FinSi
	Si cant >= 50000 y cant < 100000 Entonces
		bill = (cant-(cant%50000))/ 50000
		rest = (cant%50000)
		Escribir bill " Billetes de $50.000"
		Si rest >= 20000 Entonces
			bill = (rest-(rest%20000))/20000
			rest = (rest%20000)
			Escribir bill " Billetes de $20.000"
		FinSi
		Si rest >= 10000 Entonces
			bill = (rest-(rest%10000))/ 10000
			Escribir bill " Billetes de $10.000"
		FinSi
	FinSi
	Si cant >= 20000 y cant < 50000 Entonces
		bill = (cant-(cant%20000))/ 20000
		rest = (cant%20000)
		Escribir bill " Billetes de $20.000"
		Si rest >= 10000 Entonces
			bill = (rest-(rest%10000))/ 10000
			Escribir bill " Billetes de $10.000"
		FinSi
	FinSi
	Si cant >= 10000 y cant < 20000 Entonces
		bill = (cant-(cant%10000))/ 10000
		rest = (cant%10000)
		Escribir bill " Billetes de $10.000"
	FinSi
FinFuncion

Algoritmo Cajero
	
	Definir cant Como Entero
	Definir seguir Como Logico
	
	seguir=Verdadero
	Mientras seguir=Verdadero
	
		Escribir "¿Cuanto desea retirar?"
		Escribir "Si ingresa el nùmero 0, terminara el proceso"
	Leer cant
	

	Si cant == 0 Entonces
		seguir = Falso
	SiNo
		
		Si cant%10000 <> 0 Entonces
			Escribir "Error, ingrese algún valor valido. Debe ser multiplo de 10.000"
			cant = 0
		SiNo
			Escribir "Usted va a recibir:"
			billetes(cant)
		FinSi
	FinSi
	FinMientras

FinAlgoritmo
