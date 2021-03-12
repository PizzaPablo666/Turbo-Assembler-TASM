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
        PUSH CX
        CALL DELAY
        POP CX
        LOOP CYCLE
        MOV AH, 4CH
        MOV AL, 0
        INT 21H
MAIN    ENDP   

DELAY   PROC
        MOV CX, 800
OU:     PUSH CX
        MOV CX, 4000
IU:     LOOP IU
        POP CX
        LOOP OU
        RET
DELAY   ENDP
END     MAIN

