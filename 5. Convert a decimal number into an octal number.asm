//Convert a decimal number into an octal number.


include 'emu8086.inc'

PRINTN "Enter Decimal Number:"
mov ah,01
int 21h
sub al,'0'
mov bx,0
PRINTN

Convert:
mov ah,0
mov dl,8
div dl 

mov dl,al
mov al,ah
mov ah,0
push ax

mov al,dl
inc bx
cmp al,0
je Store
loop Convert
Store: 

mov cx,bx

PRINTN "Octal of Decimal Number:"
Print:

pop dx
add dx,'0'
mov ah,02
int 21h
loop Print

mov ax, 4c00h
int 21h
ret
 