.MODEL TINY
.386

.DATA
    TOP  DB  201,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,187,"$"
    MID  DB  186,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,186,"$"
    BOT  DB  200,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,188,"$"

    r1a  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r2a  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r3a  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r4a  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"

    r1b  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r2b  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r3b  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r4b  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"

    r1c  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r2c  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r3c  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"
    r4c  DB  186,255,48,57,255,186,255,48,48,255,186,255,48,54,255,186,255,48,52,255,186,255,48,49,255,186,255,48,50,255,186,"$"


.CODE
org 100h
    MAIN PROC

        call printBoard1

        MOV AH, 4CH                  ; return control to DOS
        INT 21H
    MAIN ENDP

    printBoard1:
        
        LEA DX, TOP             ; load & display the TOP  
        MOV AH, 9            
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H






        LEA DX, r1a             ; load & display the r1a
        MOV AH, 9
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H

        LEA DX, MID             ; load & display the MID
        MOV AH, 9            
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H





        LEA DX, r2a             ; load & display the r2a
        MOV AH, 9
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H

        LEA DX, MID             ; load & display the MID
        MOV AH, 9            
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H





        LEA DX, r3a             ; load & display the r3a
        MOV AH, 9
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H

        LEA DX, MID             ; load & display the MID
        MOV AH, 9            
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H





        LEA DX, r4a             ; load & display the r4a
        MOV AH, 9
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H






        LEA DX, BOT             ; load & display the BOTTOM  
        MOV AH, 9            
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H
        ret
        
END MAIN






