.model small
.stack 100h
.code
main proc
    ; Take first input
    mov ah, 1          ; DOS function to take single character input
    int 21h            ; Input character goes to AL
    mov bl, al         ; Store first input character in BL

    ; Display first input
    mov ah, 2          ; DOS function to display a single character
    mov dl, bl         ; Move first input character from BL to DL
    int 21h            ; Display the character in DL

    ; Take second input
    mov ah, 1          ; DOS function to take another single character input
    int 21h            ; Input character goes to AL
    mov bh, al         ; Store second input character in BH

    ; Display second input
    mov ah, 2          ; DOS function to display a single character
    mov dl, bh         ; Move second input character from BH to DL
    int 21h            ; Display the character in DL

exit:
    mov ah, 4ch        ; DOS function to exit program
    int 21h
main endp
end main
