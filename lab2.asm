
MODEL   SMALL
.STACK  256
.DATA   
        MSG     DB 'Hello world', 0DH, 0AH, '$'
.CODE
MAIN    PROC
        MOV AX, @DATA
        MOV DS, AX
        MOV DX, OFFSET MSG + 10
        MOV CX, 11
CYCLE:
        MOV AH, 9
        INT 21H
        DEC DX
        LOOP CYCLE
        MOV AH, 4CH
        MOV AL, 0
        INT 21H
MAIN    ENDP   
END     MAIN
