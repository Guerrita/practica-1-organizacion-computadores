(LEECIFRAS)
@KBD
D=M
@LEECIFRAS
D;JEQ
@48
D=D-A
@cifras
M=D
@copiacifras
M=D
@5
D=D-A
@LEECIFRAS
D;JGT
(LEERDIGITOS)
@copiacifras
MD=M-1
@FINLEERDIGITOS
D;JLT 
(LEERNUMERO)
@KBD
D=M
@LEERNUMERO
D;JEQ
@48
D=D-A
@numerotemporal
M=D
@array
D=A
@copiacifras
D=D+M
D=D+1
@array
M=D
@numerotemporal
D=M
@array
A=M
M=D
@LEERDIGITOS
0;JMP 

(FINLEERDIGITOS)
@FINLEERDIGITOS
0;JMP