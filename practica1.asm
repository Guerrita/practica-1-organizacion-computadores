	(LOOP)		//SE PONER UN MARCADOR DONDE INICIA EL LOOP 
	(LEEROPCION) 
	@KBD 
	D=M 
	@LEEROPCION 
	D;JEQ 
	@48 
	D=D-A 
	@opcion 	//@opcion=POSICION 16
	M=D 			//DESDE LEER opcion HASTA ESTA LINEA ES EL CODIGO PARA LEER LA opcion

	@LOOP 
	D;JLE			//VERIFICA QUE LA opcion SEA MAYOR O IGUAL QUE 1 
	@4 
	D=D-A			//SE LE RESTA 4 A LA opcion PARA VALIDAR 
	@OPERACIONES 
	D;JLE			//VERIFICA QUE LA opcion SEA MENOR QUE 4 
	@1 
	D=D-A 
	@VALIDARLOOP 
	D;JLE					//VALIDA SI EL NUMERO ES MAYOR QUE 5 
	//ESCRIBA X		//SI EL NUMERO ES MAYOR QUE 5 LO ESCRIBE 
								//SINO VA A VALIDAR EL LOOP 
	(VALIDARLOOP) 
	@opcion 
	D=M 
	@5 
	D=D-A 
	@LOOP 
	D;JNE			//VALIDA QUE LA opcion NO SEA IGUAL A 5. 
						//SI LA opcion ES 5 TERMINA EL PROGRAMA 
	(END)			//FINALIZA EL PROGRAMA 
	@END 
	0;JMP 
	
	(OPERACIONES)
	//LEA1
	//LEA2
	@opcion
	D=M
	D=D-1
	@RESTA
	D;JNE

	(SUMA)
	@var1				//POSICION 17
	D=M
	@var2				//POSICION 18
	D=D+M
	@resultado	//POSICION 19
	M=D

	@MOSTRARRESULTADO
	0;JMP
	
	(RESTA)
	@opcion
	D=M
	@2
	D=D-A
	@MULTIPLICACION
	D;JNE
	@var1
	D=M
	@var2
	D=D-M
	@resultado
	M=D

	@MOSTRARRESULTADO
	0;JMP

	(MULTIPLICACION)
	@opcion
	D=M
	@3
	D=D-A
	@DIVISION
	D;JNE
	@sum 
  M=0 
	(LOOPMULTIPLICACION) 
  @var2 
  MD=M-1 
  @FINISH 
  D;JLT 
  @var1 
  D=M 
  @sum 
  M=D+M 
  @LOOPMULTIPLICACION 
  0;JMP 
  (FINISH) 
  @sum 
  D=M 
  @resultado 
  M=D 

	@MOSTRARRESULTADO
	0;JMP

	(DIVISION)
	@resultado
	M = 0
	@resto
	M = 0

	@var2
	D = M
	@MOSTRARRESULTADO
	D;JEQ

	@var1
	D = M
	@MOSTRARRESULTADO
	D;JEQ

	@respaldo
	M = D  // respaldo to restore

	(LOOPDIVISION)
	@var2
	D = D - M
	@CALCULORESTO
	D;JLT
	@resultado
	M = M + 1
	@CALCULOCOCIENTE
	D;JEQ
	@LOOPDIVISION
	0;JMP

	(CALCULORESTO)
	@var2
	D = D + M
	@resto
	M = D

	(CALCULOCOCIENTE)
	@respaldo
	D = M
	@var1
	M = D

	(MOSTRARRESULTADO)
	//SE IMPRIME EL resultado

	@LOOP
	0;JMP