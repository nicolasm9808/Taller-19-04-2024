Funcion dibujo(tama�o, figura)
	Definir x Como Caracter
	Definir seguir Como Logico
	
	Definir i, j Como Entero
	Si figura == 1 Entonces
		Si tama�o == 0 Entonces
			seguir=Falso
		SiNo
			Para  j=1 hasta tama�o
				x="*"
				Para i=1 Hasta tama�o - 1
					x = x + " *"
				FinPara
				Escribir x
			FinPara
		FinSi
	FinSi
	
	Si figura == 2 Entonces
		Si tama�o == 0 Entonces
			seguir=Falso
		SiNo
			x=""
			Para  j=1 hasta tama�o
				x = x + " *"
				Escribir x
			FinPara
		FinSi
	FinSi
FinFuncion



Algoritmo dibujos
	
	Definir tama�o, figura, i, j Como Entero
	Definir seguir Como Logico

	
	seguir=Verdadero
	
	Mientras seguir=Verdadero

		Escribir "Cual figura desea dibujar"
		Escribir "(1)Cuadrado	(2)Triangulo"
		Leer figura
		
		Escribir "Ingrese el tama�o de la figura"
		Escribir "Si ingresa el n�mero 0, terminara el proceso"
		Leer tama�o
		
		Si figura <> 1 y figura <> 2 Entonces
			Escribir "Error al seleccionar figura"
		FinSi
		Si	tama�o == 0 Entonces
			seguir=Falso
		SiNo
			dibujo(tama�o, figura)
		FinSi
	
	FinMientras

FinAlgoritmo
