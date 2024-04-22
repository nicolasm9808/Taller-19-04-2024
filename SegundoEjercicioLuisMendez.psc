Funcion dibujo(tamaño, figura)
	Definir x Como Caracter
	Definir seguir Como Logico
	
	Definir i, j Como Entero
	Si figura == 1 Entonces
		Si tamaño == 0 Entonces
			seguir=Falso
		SiNo
			Para  j=1 hasta tamaño
				x="*"
				Para i=1 Hasta tamaño - 1
					x = x + " *"
				FinPara
				Escribir x
			FinPara
		FinSi
	FinSi
	
	Si figura == 2 Entonces
		Si tamaño == 0 Entonces
			seguir=Falso
		SiNo
			x=""
			Para  j=1 hasta tamaño
				x = x + " *"
				Escribir x
			FinPara
		FinSi
	FinSi
FinFuncion



Algoritmo dibujos
	
	Definir tamaño, figura, i, j Como Entero
	Definir seguir Como Logico

	
	seguir=Verdadero
	
	Mientras seguir=Verdadero

		Escribir "Cual figura desea dibujar"
		Escribir "(1)Cuadrado	(2)Triangulo"
		Leer figura
		
		Escribir "Ingrese el tamaño de la figura"
		Escribir "Si ingresa el nùmero 0, terminara el proceso"
		Leer tamaño
		
		Si figura <> 1 y figura <> 2 Entonces
			Escribir "Error al seleccionar figura"
		FinSi
		Si	tamaño == 0 Entonces
			seguir=Falso
		SiNo
			dibujo(tamaño, figura)
		FinSi
	
	FinMientras

FinAlgoritmo
