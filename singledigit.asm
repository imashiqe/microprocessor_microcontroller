.model small
.stack 100h
.data
.code
main proc

    ; Take first input
    mov ah, 1          ; DOS function to take single character input
    int 21h            ; Input character goes to AL
    sub al, '0'        ; Convert ASCII to integer
    mov bl, al         ; Store the integer in BL

    ; Take second input
    mov ah, 1          ; DOS function to take another single character input
    int 21h            ; Input character goes to AL
    sub al, '0'        ; Convert ASCII to integer
    mov bh, al         ; Store the integer in BH

    ; Add the two integers
    add bl, bh         ; bl = bl + bh (sum of the two digits)

    ; Convert the result back to ASCII for display
    add bl, '0'        ; Convert result to ASCII
    mov dl, bl         ; Move result to DL for display

    ; Display the result
    mov ah, 2          ; DOS function to display a single character
    int 21h            ; Display the character in DL

    ; Exit the program
exit:
    mov ah, 4ch        ; DOS function to exit program
    int 21h
main endp
end main
