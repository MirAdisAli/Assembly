//Write a code which will input a number which is more than one digit and check whether it is divisible by 2 or not. 


include 'emu8086.inc'

PRINTN "Enter Number:"
Input: 

mov ah,01h
int 21h
cmp al,13
je Compare 

sub al,'0'
mov [bx],ax I
nc bx
loop Input 

Compare:
PRINTN
dec bx
mov al,[bx]
cmp al,0
je Print
cmp al,2 

 je Print
cmp al,4
je Print
cmp al,6
je Print
cmp al,8
je Print

PRINTN "The Number Is Not Divisible By 2."
mov ax, 4c00h
int 21h
ret 

Print:

PRINTN "The Number Is Divisible By 2."
mov ax, 4c00h
int 21h
ret