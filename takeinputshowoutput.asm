
;Task 1: Take an input and show that output.
.model small
.stack 100h
.code
main proc
    mov ah, 1          ; DOS function to take single character input
    int 21h            ; Input character goes to AL
    mov bl, al         ; Store input character in BL

    mov ah, 2          ; DOS function to display a single character
    mov dl, bl         ; Move input character from BL to DL
    int 21h            ; Display the character in DL

exit:
    mov ah, 4ch        ; DOS function to exit program
    int 21h
main endp
end main
