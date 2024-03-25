[org 0x7c00]

section .text
    ; Boot sector code to print "Hello, Boot Sector!" to the screen
    mov ah, 0x0e    ; Function to print character
    mov al, 'H'     ; Load 'H' into AL
    int 0x10        ; Call BIOS interrupt to print character

    mov al, 'e'     ; Load 'e' into AL
    int 0x10        ; Print 'e'

    mov al, 'l'     ; Load 'l' into AL
    int 0x10        ; Print 'l'

    mov al, 'l'     ; Load 'l' into AL
    int 0x10        ; Print 'l' again (twice)

    mov al, 'o'     ; Load 'o' into AL
    int 0x10        ; Print 'o'

    mov al, ','     ; Load ',' into AL
    int 0x10        ; Print ','

    mov al, ' '     ; Load ' ' into AL
    int 0x10        ; Print space

    mov al, 'B'     ; Load 'B' into AL
    int 0x10        ; Print 'B'

    mov al, 'o'     ; Load 'o' into AL
    int 0x10        ; Print 'o'

    mov al, 'o'     ; Load 'o' into AL
    int 0x10        ; Print 'o'

    mov al, 't'     ; Load 't' into AL
    int 0x10        ; Print 't'

    mov al, ' '     ; Load ' ' into AL
    int 0x10        ; Print space

    mov al, 'S'     ; Load 'S' into AL
    int 0x10        ; Print 'S'

    mov al, 'e'     ; Load 'e' into AL
    int 0x10        ; Print 'e'

    mov al, 'c'     ; Load 'c' into AL
    int 0x10        ; Print 'c'

    mov al, 't'     ; Load 't' into AL
    int 0x10        ; Print 't'

    mov al, 'o'     ; Load 'o' into AL
    int 0x10        ; Print 'o'

    mov al, 'r'     ; Load 'r' into AL
    int 0x10        ; Print 'r'

    mov al, '!'     ; Load '!' into AL
    int 0x10        ; Print '!'

    jmp $           ; Infinite loop

times 510-($-$$) db 0   ; Fill the rest of the sector with zeros
dw 0xaa55               ; Boot signature (0xaa55) indicating a valid boot sector
