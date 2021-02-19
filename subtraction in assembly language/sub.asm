.model small
.stack 100h
.data
msg1 db 'Enter 1st number: $'
msg2 db 'Enter 2nd number: $'
msg3 db 'Result: $'
.code
main proc
mov ax,@data
mov ds,ax

LEA DX, msg1             
MOV AH, 9            
INT 21H

mov ah,1
int 21h
mov bl,al


mov ah,2
mov dl,0ah
int 21h

mov ah,2
mov dl,bl
int 21h


mov ah,2
mov dl,0ah
int 21h

LEA DX, msg2          
MOV AH, 9            
INT 21H

mov ah,1
int 21h
mov bh,al

mov ah,2
mov dl,0ah
int 21h


mov ah,2
mov dl,bh
int 21h

mov ah,2
mov dl,0ah
int 21h

LEA DX, msg3             
MOV AH, 9            
INT 21H

sub bl,bh
add bl,30h
mov ah,2
mov dl,bl
int 21h

mov ah,4ch
int 21h

main endp
end main