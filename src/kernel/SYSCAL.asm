        jmp     init
%macro str 1
init:
        push    ax
        mov     ax,     0
        mov     es,     ax
        pop     ax
        mov     dword[es:0144h],interrupt51
        ret
interruput51:
        cmp     ah,     01h
        je      .disstr
        cmp     ah,     02h
        je      .newlin
        cmp     ah,     03h
        je      .bacdos
        ret
.disstr:
        mov     bp,     dx
        mov     ah,     09h
        mov     al,     13h


