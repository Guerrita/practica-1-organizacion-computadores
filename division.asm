@resultado
M = 0
@resto
M = 0

@var2
D = M
@END
D;JEQ

@var1
D = M
@END
D;JEQ

@respaldo
M = D  // respaldo to restore

(LOOP)
@var2
D = D - M
@CALCULORESTO
D;JLT
@resultado
M = M + 1
@CALCULOCOCIENTE
D;JEQ
@LOOP
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


(END)
@END
0;JMP