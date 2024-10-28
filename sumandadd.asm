.model small
.stack 100h
.data
.code
main proc
    mov ah, 1          ; Read first digit
    int 21h
    sub al, '0'        ; Convert ASCII to integer
    mov bl, al         ; Store in BL

    mov ah, 1          ; Read second digit
    int 21h
    sub al, '0'        ; Convert ASCII to integer
    mov bh, al         ; Store in BH

    add bl, bh         ; bl = bl + bh (sum of the two digits)

    add bl, '0'        ; Convert result to ASCII for display
    mov dl, bl         ; Move result to DL for display

    mov ah, 2          ; Display the result
    int 21h

    exit:
    mov ah, 4ch        ; Exit program
    int 21h
main endp
end main
