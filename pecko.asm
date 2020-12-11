.MODEL TINY
.386

.DATA
    PROMPT DB "Press q to quit$"

    TOP  DB  201,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,187,"$"
    MID  DB  204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,"$"
    BOT  DB  200,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,188,"$"

    ;this is board preset A
    r1a  DB  186,255,48,50,255,186,255,48,49,255,186,255,48,51,255,186,255,48,52,255,186,255,48,53,255,186,255,48,54,255,186,"$"
    r2a  DB  186,255,48,55,255,186,255,48,56,255,186,255,48,57,255,186,255,49,48,255,186,255,49,49,255,186,255,49,50,255,186,"$"
    r3a  DB  186,255,49,51,255,186,255,49,52,255,186,255,49,53,255,186,255,49,54,255,186,255,49,55,255,186,255,48,48,255,186,"$"
    r4a  DB  186,255,49,56,255,186,255,49,57,255,186,255,50,48,255,186,255,50,49,255,186,255,50,50,255,186,255,50,51,255,186,"$"

    ;this is board preset B
    r1b  DB  186,255,48,50,255,186,255,48,49,255,186,255,48,52,255,186,255,48,51,255,186,255,48,53,255,186,255,48,54,255,186,"$"
    r2b  DB  186,255,48,55,255,186,255,48,56,255,186,255,48,57,255,186,255,49,48,255,186,255,48,48,255,186,255,49,49,255,186,"$"
    r3b  DB  186,255,49,50,255,186,255,49,51,255,186,255,49,52,255,186,255,49,53,255,186,255,49,54,255,186,255,49,55,255,186,"$"
    r4b  DB  186,255,49,56,255,186,255,49,57,255,186,255,50,48,255,186,255,50,49,255,186,255,50,50,255,186,255,50,51,255,186,"$"

    ;this is board preset C
    r1c  DB  186,255,48,50,255,186,255,48,49,255,186,255,48,51,255,186,255,48,52,255,186,255,48,53,255,186,255,48,54,255,186,"$"
    r2c  DB  186,255,48,55,255,186,255,48,56,255,186,255,48,57,255,186,255,49,48,255,186,255,49,49,255,186,255,49,50,255,186,"$"
    r3c  DB  186,255,49,51,255,186,255,49,52,255,186,255,49,53,255,186,255,49,54,255,186,255,48,48,255,186,255,49,55,255,186,"$"
    r4c  DB  186,255,49,56,255,186,255,49,57,255,186,255,50,48,255,186,255,50,49,255,186,255,50,50,255,186,255,50,51,255,186,"$"


.CODE
org 100h
    MAIN PROC

        LEA DX, PROMPT             ; load & display the PROMPT 
        MOV AH, 9            
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H

        call printBoard1
        ;call printBoard2
        ;call printBoard3

        game:
            MOV AH, 1
            INT 16H

            MOV BL, AL

            ;Check if the user input a q
            CMP BL, 113
            je EXIT

            jmp game


    MAIN ENDP

    EXIT:
        MOV AH, 4CH                  ; return control to DOS
        INT 21H

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

    printBoard2:
        
        LEA DX, TOP             ; load & display the TOP  
        MOV AH, 9            
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H






        LEA DX, r1b             ; load & display the r1a
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





        LEA DX, r2b             ; load & display the r2a
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





        LEA DX, r3b             ; load & display the r3a
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





        LEA DX, r4b             ; load & display the r4a
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

    printBoard3:
        
        LEA DX, TOP             ; load & display the TOP  
        MOV AH, 9            
        INT 21H
        MOV AH, 2                    ; carriage return
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH                  ; line feed
        INT 21H






        LEA DX, r1c             ; load & display the r1a
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





        LEA DX, r2c             ; load & display the r2a
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





        LEA DX, r3c             ; load & display the r3a
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





        LEA DX, r4c             ; load & display the r4a
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
