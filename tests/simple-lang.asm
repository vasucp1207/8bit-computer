.text
    ldi B 10
    mov M B %aaaaaa

    ldi B 20
    mov M B %b

    mov A M %aaaaaa
    mov B M %b
    add
    
    mov M A %c

    mov A M %c
    ldi B 30
    cmp

    jz %then_block
    jmp %skip_if

then_block:
    ldi B 1
    add
    mov M A %c
    jmp %skip_if

skip_if:
    hlt

.data
aaaaaa = 0
b = 0
c = 0
