section .text
  global _start     ;Must be declared for linker

_start:                ;Tell linker entry point
  mov edx,len		   ;message length
  mov ecx,msg          ;message to write
  mov ebx, 1           ;File descriptor (stdout)
  mov eax, 4           ;System call number
  int 0x80             ;call kernel

  mov edx,9            ;message length
  mov ecx,s2           ;message to write
  mov ebx,1            ;File descriptor(stdout)
  mov eax,4            ;System call number
  int 0x80             ;Call kernel

  mov eax,1            ;System call number (sys_exit)
  int 0x80             ;Call kernel

section .data
  msg db 'Displaying 9 stars', 0xa ;A message
  len equ $-msg                    ;Lenght of message 
  s2 times 9 db '*'
