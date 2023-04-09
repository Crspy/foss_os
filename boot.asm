bits 16
org 0x7C00

start:
mov ax,welcome_msg
call print_string
.stop:
hlt
jmp .stop


%include "print.inc"

welcome_msg db 'Hello from real mode!',0
times (510 - ($ - $$)) db 0
boot_magic_sequence db 0x55,0xAA
