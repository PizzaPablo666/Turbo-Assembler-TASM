SSEG    SEGMENT
        DB 256 DUP(?)
SSEG    ENDS
DSEG    SEGMENT
MSG     DB 'Hello world', 0DH, 0AH, '$'
DSEG    ENDS

CSEG    SEGMENT
        ASSUME CS:CSEG, DS:DSEG, SS:SSEG
START:
        MOV AX, DSEG
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
CSEG    ENDS
        END START   

