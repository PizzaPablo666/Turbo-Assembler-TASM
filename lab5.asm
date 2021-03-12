SSEG    SEGMENT
        DB 256 DUP(?)
SSEG    ENDS
CSEG    SEGMENT
        ASSUME CS:CSEG, SS:SSEG
START:
        MOV CX,10
        MOV DL, 'A'
CYCL:
        MOV AH, 6
        INT 21H
        INC DL
        
        LOOP CYCL
    
        MOV AH, 4CH
        MOV AL, 0
CSEG    ENDS
        END START  
