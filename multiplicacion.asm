   @sum 
    M=0 
(LOOPMULTIPLICACION) 
    @VAR2 
    MD=M-1 
    @FINISH 
    D;JLT 
    @VAR1 
    D=M 
    @sum 
    M=D+M 
    @LOOPMULTIPLICACION 
    0;JMP 
    (FINISH) 
    @sum 
    D=M 
    @RESULTADO 
    M=D 

(END) 