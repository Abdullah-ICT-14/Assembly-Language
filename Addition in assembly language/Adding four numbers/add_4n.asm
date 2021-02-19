.model small
.stack 100h
.data
msg1 db 'Enter 1st number: $'
msg2 db 'Enter 2nd number: $'
msg3 db 'Enter 3rd number: $'
msg4 db 'Enter 4rth number: $'
msg5 db 'Result: $'
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

mov ah,1
int 21h
mov cl,al

mov ah,2
mov dl,0ah
int 21h

mov ah,2
mov dl,cl
int 21h

mov ah,2
mov dl,0ah
int 21h


LEA DX, msg4         
MOV AH, 9            
INT 21H

mov ah,2
mov dl,0ah
int 21h

mov ah,1
int 21h
mov ch,al


LEA DX, msg5   
MOV AH, 9         
INT 21H

add bl,bh
sub bl,30h
add bl,cl
sub bl,30h
add bl,ch
sub bl,30h
mov ah,2
mov dl,bl
int 21h

mov ah,4ch
int 21h

main endp
end main