//As I have uploaded a code which found max from N numbers, there was an error in the code. At first you have to resolve the code. Then, write a single code which will take N input from the user and find out max, again take N input from user and find out min.


include 'emu8086.inc' 

PRINTN 'How many numbers'
mov ah,1h
int 21h ;getting input by these two line printn

print "Enter numbers: “
mov dx,ax ;moving input element to dx and cl
registor
mov cl,al
sub cl,'0' ;substracting
mov bx,0
p1: 

mov ah,1h
int 21h ;doing a loop
mov [bx],ax
printn
inc bx
dec cl
cmp cl,0 ; comparing command j
ne p1 ; checking if not equal to
printn 

mov ax,dx ; keep no of item in ax 

sub ax,'0'
mov cl,al
mov bx,0 

p2: 

mov al, [bx]
cmp al,dl ; comparing

jg label1 ;checking if greater than or not // label1 is a chunk of code

jle func ;checking if less than or not // func is a chunk of code 

label1:
mov dl,al 

func:
inc bx
loop p2 

mov ah,02h
int 21h 

mov ax, 4c00h ; return to ms-dos int 21h
ret 


;find minimum value

include 'emu8086.inc'

PRINTN "Enter Total Numbers:”
mov ah,1 I
nt 21h
PRINTN

PRINTN "Enter Numbers:”

mov dx,ax
mov cl,al 

sub cl,'0'
mov bx,0 

Loop1:
mov ah,1
int 21h
mov [bx],ax
PRINTN
 inc bx
dec cl
cmp cl,0
jne Loop1
mov ax,dx
sub ax,'0'
mov cl,al
mov bx,0
PRINTN "The Minimum Value:"

Loop2: 
mov al, [bx]
cmp dl,al
jg Change
jle Print 

Change:
mov dl,al
Print: 

inc bx
loop Loop2
mov ah,02

int 21h
mov ax, 4c00h
int 21h
ret


