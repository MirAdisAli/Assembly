//Write a single program which will take uppercase string and print the string to lowercase then take lowercase string input and print uppercase of the string. 


include 'emu8086.inc' 

PRINTN "Enter The Length Of The String:"
mov ah,1
int 21h
PRINTN 

PRINTN "Enter The String:”
mov cl,al
sub cl,'0'
mov dl,cl
mov bx,0 

Input: 

mov ah,1
int 21h
mov [bx],ax 
inc bx
dec cl
cmp cl,0
jne Input
PRINTN
mov cl,dl
mov bx,0 

PRINTN "String After Conversion:"
Output:
mov dl,[bx]
cmp dl,'A'
jge Compare 

cmp dl, 1
jge goprint

mov ah,2
 int 21h
inc bx
dec cl
cmp cl,0
jne Output
Compare:
 cmp dl,'Z'
jle Convert 

Convert:
add dl,32
mov ah,2
int 21h 
inc bx
dec cl
cmp cl,0
jne Output
PRINTN 

goprint:
cmp dl, 9
jle print

print:
mov ah, 2
int 21h 

mov ax, 4c00h
int 21h
ret 

