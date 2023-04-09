%ifndef PRINT_HEADER_GUARD
%define PRINT_HEADER_GUARD
; arguments:
; ax : address to null terminated string
print_string:
    push ax
    push si
    pushf
    cld
    mov si,ax
    mov ah,0Eh ; Teletype output (int 10h)
.loop:
    lodsb
    cmp al,0
    je .end

.print_char:
    int 10h
    jmp .loop
.end:
    popf
    pop si
    pop ax
    ret





%endif  ; PRINT_HEADER_GUARD