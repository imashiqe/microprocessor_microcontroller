.model small
.stack 100h
.data
m db &quot;HELLOW WORLD $&quot; ;character string

.code
main proc

mov ax,@data ;initialization data segment to code segment
mov ds,ax

mov ah,9
lea dx,m
int 21h

exit:
mov ah,4ch
int 21h
main endp
end main