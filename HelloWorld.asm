section .data
        hello: db 'Hello world!', 10 ; 'Hello world!' plus a linefeed char
        hellolen: equ $-hello

section .text
        global _start

_start:
        mov eax,4        ;The system call for write (sys_write)
        mov ebx,1        ;File description 1 - standart output
        mov ecx,hello    ;Put the offset of hello in ecx
        mov edx,hellolen ;hellolen is a constant, so we don't need to say
                         ;mov edx, [hellolen] to get it's actual value
        int 80h          ;Call the kernel

        mov eax,1        ;The system call for exit (sys_exit)
        mov ebx,0        ;Exit whit return code of 0 (no error)
        int 80h