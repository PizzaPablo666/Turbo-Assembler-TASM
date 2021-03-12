; XOR --> If uppercase, makes lowercase, if lowercase makes uppercase, mask = 20h = 00100000b
; OR --> If uppercase makes lowercase, mask = 20h = 00100000b
; AND --> If lowercase makes uppercase, mask = 110111111b
MODEL SMALL
.STACK 256
.DATA
        MSG DB 'ABCDEFGHIJKLMnopqrstuvwxyz', 0dh, 0ah, '$'
.CODE
MAIN    PROC
        MOV AX, @DATA
        MOV DS, AX
        MOV DX, OFFSET MSG
        MOV AH, 9
        INT 21H
        MOV CX, 26
        MOV SI, 0
;L:      
;        MOV AL, MSG[SI]
;        AND AL, 11011111B
;        MOV MSG[SI], AL
        
;        INC SI
;        LOOP L
;        INT 21H
        
        
;        MOV SI, 0
;        MOV CX, 26

X:      
        MOV AL, MSG[SI]
        XOR AL, 20h
        MOV MSG[SI], AL
        
        INC SI
        LOOP X
        INT 21H
        
        
        MOV SI, 0
        MOV CX, 26
        
;K:      
;       MOV AL, MSG[SI]
;       OR AL, 00100000B (20h)
        
;       MOV MSG[SI], AL
        
;       INC SI
;       LOOP K
;       INT 21H
        
       MOV AH, 4CH
       MOV AL, 0
       INT 21H
        MAIN ENDP
END MAIN
 
