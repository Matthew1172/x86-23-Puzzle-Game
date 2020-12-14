;Matthew Pecko
;Professor Vulis
;CSc210 Project 2 23-Puzzle
;12/14/2020

;Compile using tasm
;Go to the function 'initConfig' at line ~280 and use comments to switch between boards 1, 2, and 3
;f.e.
;300	call printBoard1
;301	;call printBoard2
;302	;call printBoard3


.MODEL TINY
.386

.DATA
PROMPT DB "Enter q to quit, arrow keys to move, n to restart (new game) HAPPY HOLIDAYS!! :)$"

TOP  DB  201,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,187,"$"
MID  DB  204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,"$"
BOT  DB  200,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,188,"$"

;this is board preset A
a   DB 201,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,187,
DB 186,255,48,50,255,186,255,48,49,255,186,255,48,51,255,186,255,48,52,255,186,255,48,53,255,186,255,48,54,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,
DB 186,255,48,55,255,186,255,48,56,255,186,255,48,57,255,186,255,49,48,255,186,255,49,49,255,186,255,49,50,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,	
DB 186,255,49,51,255,186,255,49,52,255,186,255,49,53,255,186,255,49,54,255,186,255,49,55,255,186,255,48,48,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,	
DB 186,255,49,56,255,186,255,49,57,255,186,255,50,48,255,186,255,50,49,255,186,255,50,50,255,186,255,50,51,255,186,
DB 200,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,188,"$"

;this is board preset B
b   DB 201,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,187,
DB  186,255,48,50,255,186,255,48,49,255,186,255,48,51,255,186,255,48,52,255,186,255,48,53,255,186,255,48,54,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,
DB  186,255,48,55,255,186,255,48,56,255,186,255,48,57,255,186,255,49,48,255,186,255,49,49,255,186,255,49,50,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,	
DB  186,255,49,51,255,186,255,49,52,255,186,255,49,53,255,186,255,49,54,255,186,255,48,48,255,186,255,49,55,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,	
DB  186,255,49,56,255,186,255,49,57,255,186,255,50,48,255,186,255,50,49,255,186,255,50,50,255,186,255,50,51,255,186,
DB 200,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,188,"$"

;this is board preset C
c   DB 201,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,203,205,205,205,205,187,
DB  186,255,48,50,255,186,255,48,49,255,186,255,48,52,255,186,255,48,51,255,186,255,48,53,255,186,255,48,54,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,
DB  186,255,48,55,255,186,255,48,56,255,186,255,48,57,255,186,255,49,48,255,186,255,48,48,255,186,255,49,49,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,	
DB  186,255,49,50,255,186,255,49,51,255,186,255,49,52,255,186,255,49,53,255,186,255,49,54,255,186,255,49,55,255,186,
DB 204,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,206,205,205,205,205,185,	
DB  186,255,49,56,255,186,255,49,57,255,186,255,50,48,255,186,255,50,49,255,186,255,50,50,255,186,255,50,51,255,186,
DB 200,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,202,205,205,205,205,188,"$"

col DB 0
row DB 0
board DB 0

.CODE
org 100h
MAIN PROC

;initialize display step 0
MOV AH, 00h
MOV AL, 03h
INT 10h

MOV AX, 0B800h
MOV ES, AX
XOR di,di


;initialize configuration and dislay prompt step 1
newGame:
call initConfig

;display board step 2


;wait for key step 3
game:

;get cursor x y
call SetCursor

MOV AH, 0
INT 16H

MOV BL, AL

;up arrow
CMP AH, 48h
jz upArrow

;down arrow
CMP AH, 50h
jz downArrow

;right arrow
CMP AH, 4dh
jz rightArrow

;left arrow
CMP AH, 4bh
jz leftArrow

;lowercase q
CMP AL, 71h
jz EXIT

;uppercase q
CMP AL, 51h
jz EXIT

;lowercase n
CMP AL, 6eh
jz newGame

;uppercase n
CMP AL, 4eh
jz newGame

jmp game

MAIN ENDP

EXIT:
MOV AH, 4CH                  ; return control to DOS
INT 21H

SetCursor:
mov dl, col
mov dh, row
mov bh, 0
mov ah, 02h
int 10h
ret

getStrlen:
lodsb
cmp al, 24h
je strlen_end
inc bx
jmp getStrlen
strlen_end:
ret

loadAndDisplayStr:
lodsb
stosw
dec cx
jne loadAndDisplayStr
ret

printBoard1:
MOV board, 1
;put the cursor at 00
mov col, 27
mov row, 5
xor dx,dx
xor ax,ax
mov cx, 9
myloop1:
push cx
lea si, a
add si, dx
mov cx, 31
mov di, ax
push ax
mov ah, 4
call loadAndDisplayStr
pop ax
add ax, 160
add dx, 32
pop cx
dec cx
jnz myloop1
ret

printBoard2:
MOV board, 2
;put the cursor at 00
mov col, 22
mov row, 5
xor dx,dx
xor ax,ax
mov cx, 9
myloop2:
push cx
lea si, b
add si, dx
mov cx, 31
mov di, ax
push ax
mov ah, 4
call loadAndDisplayStr
pop ax
add ax, 160
add dx, 32
pop cx
dec cx
jnz myloop2
ret

printBoard3:
MOV board, 3
;put the cursor at 00
mov col, 22
mov row, 3
xor dx,dx
xor ax,ax
mov cx, 9
myloop3:
push cx
lea si, c
add si, dx
mov cx, 31
mov di, ax
push ax
mov ah, 4
call loadAndDisplayStr
pop ax
add ax, 160
add dx, 32
pop cx
dec cx
jnz myloop3
ret

swapBoard1:
;started getting lost here...
ret

swapBoard2:
;started getting lost here...
ret

swapBoard3:
;started getting lost here...
ret

upArrow:
sub row, 2
cmp board, 1
call swapBoard1
cmp board, 2
call swapBoard2
cmp board, 3
call swapBoard3
jmp game

downArrow:
add row, 2
cmp board, 1
call swapBoard1
cmp board, 2
call swapBoard2
cmp board, 3
call swapBoard3
jmp game

leftArrow:
sub col, 5
cmp board, 1
call swapBoard1
cmp board, 2
call swapBoard2
cmp board, 3
call swapBoard3
jmp game

rightArrow:
add col, 5
cmp board, 1
call swapBoard1
cmp board, 2
call swapBoard2
cmp board, 3
call swapBoard3
jmp game

initConfig:
;call printBoard1
;call printBoard2
call printBoard3

;gets strlen of prompt and stores it in BX
lea si, PROMPT
xor bx, bx
call getStrlen

;display prompt
lea si, PROMPT
mov cx, bx
mov ah, 2
mov di, 5a0h
call loadAndDisplayStr
ret

END MAIN
