
SSEG    SEGMENT
    DB 256 DUP(?)
SSEG    ENDS
CSEG    SEGMENT
    ASSUME CS:CSEG, SS:SSEG
START:
    MOV DL, 'M'
    MOV AH, 6
    INT 21H
    MOV DL, 'A'
    MOV AH, 6
    INT 21H
    MOV DL, 'N'
    MOV AH, 6
    INT 21H
    MOV DL, 'E'
    MOV AH, 6
    INT 21H
    MOV AH, 4CH
    MOV AL, 0
    INT 21H
CSEG     ENDS
    END START
