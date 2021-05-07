START: MOV A,#80H
       MOV R7,#07H
       MOV P1,A
       LCALL DELAY
LABEL1: RR A
        MOV P1,A
        LCALL DELAY
        DJNZ R7,LABEL1
        MOV R7,#07H
LABEL2: RL A
        MOV P1,A
        LCALL DELAY
        DJNZ R7,LABEL2
        MOV P1,#81H
        LCALL DELAY
        MOV P1,#42H
        LCALL DELAY
        MOV P1,#24H
        LCALL DELAY
        MOV P1,#18H
        LCALL DELAY
        MOV P1,#0FFH
        LCALL DELAY
        MOV P1,#00H
        LCALL DELAY
        MOV A,#80H
        MOV P1,A
        LCALL DELAY
        MOV R7,#07H
LABEL3: SETB C
        RRC A
        MOV P1,A
        LCALL DELAY
        DJNZ R7,LABEL3
        MOv P1,#00H
        LCALL DELAY
        MOV A,#0AAH
        MOV P1,A
        LCALL DELAY
        CPL A
        MOV P1,A
        LCALL DELAY 
        LJMP START 

DELAY:  MOV R4,#03H
WAIT1: MOV R3,#00H
WAIT2: MOV R2,#00H
WAIT3: DJNZ R2,WAIT3
        DJNZ R3,WAIT2
        DJNZ R4,WAIT1
        RET
        END