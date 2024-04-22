Funcion esprimo(num1, num2)
	Definir cont, i Como Entero
	Definir prim1, prim2 Como Logico
	
	Si num1>0 y num2>0 Entonces
		prim1 = Falso
		prim2 = Falso
		
		cont = 0
		Para i=1 hasta num1
			si num1%i == 0 Entonces
				cont = cont + 1
			FinSi
		FinPara
		
		Si cont == 2 Entonces
			prim1 = Verdadero

		SiNo
			Escribir "El numero " num1 " no es primo"			
		FinSi
		
		cont = 0
		Para i=1 hasta num2
			si num2%i == 0 Entonces
				cont = cont + 1
			FinSi
		FinPara		
		
		Si cont == 2 Entonces
			prim2 = Verdadero
		SiNo
			Escribir "El numero " num2 " no es primo"		
		FinSi
	SiNo
		Escribir "No es valido usar numeros negativos"
	FinSi
	
	Si prim1==Verdadero y prim2==Verdadero Entonces
		Si num1-num2 == 2 o num2-num1 == 2 Entonces
			Escribir "Los numeros son primos gemelos"
		SiNo
		Escribir "Los numeros son primos, pero no son primos gemelos"
		FinSi
	FinSi
	
FinFuncion


Algoritmo Primos_gemelos
	
	Definir num1, num2 Como Entero
	Definir seguir Como Logico
	
	seguir = Verdadero
	
	Mientras seguir=Verdadero
		Escribir "Ingrese dos numeros enteros positivos para comprobar si son primos gemelos"
		Escribir "Si ingresa el nùmero 0 o deja vacío alguno de los números, terminara el proceso"
		Leer num1, num2
		Si	num1 == 0 o num2 == 0 Entonces
			seguir = Falso
		FinSi
		
		esprimo(num1,num2)
		
	FinMientras
	
FinAlgoritmo