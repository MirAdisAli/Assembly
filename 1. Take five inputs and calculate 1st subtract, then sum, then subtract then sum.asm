//Take five inputs and calculate 1st subtract, then sum, then subtract then sum. 


org 100h
mov ah, 01h ; store/take input in AL

int 21h
MOV DL,AL ; AL value store to DL
mov ah, 01h ; take input in AL

int 21h
ADD DL,AL ;add two number

SUB DL,'0'
mov ah,02h
int 21h
mov ah,01h
int 21h
sub DL,AL ; Substract TWO NUMBER
ADD DL,'0' ; convet value to digit.
mov ah,02h
int 21h

mov ah,01h int 21h

ADD DL,AL ;add two number
SUB DL,’0'

mov ah, 02h ; show output
int 21h

mov ah, 4ch ; means getch()
int 21h
ret 
