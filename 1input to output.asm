org 100h

mov ah,01h    ; take input in AL
int 21h       ; interruption

mov dl, al    ;mov destination,source

mov ah,02h    ; show output from DL
int 21h  

mov ah,4ch    ; means getch()
int 21h

 
ret




