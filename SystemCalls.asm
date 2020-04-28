
;You can make use of Linux system calls in your assembly programs. You need to take the following steps for using Linux system calls in your program −

 ;   Put the system call number in the EAX register.
  ;  Store the arguments to the system call in the registers EBX, ECX, etc.
   ; Call the relevant interrupt (80h).
    ;The result is usually returned in the EAX register.

section .data
  userMsg db 'Please enter a number: '
  lenUserMsg equ $-userMsg            ;The length of the message
  dispMsg db 'You have entered: '
  lenDispMsg equ $-dispMsg 

section .bss                           ;Uninitialized data 
  num resb 5

section .text                  ;Code segment
  global _start

_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, userMsg
  mov edx, lenUserMsg
  int 80h

  ;Read and store the user input
  mov eax, 3
  mov ebx, 2
  mov ecx, num
  mov edx, 5         ;5 bytes (numeric, 1 for sign) of that information
  int 80h

  ; Output message 
  mov eax, 4 
  mov ebx, 1
  mov ecx, dispMsg
  mov edx, lenDispMsg
  int 80h

  ;Output the number entered 
  mov eax, 4
  mov ebx, 1
  mov ecx, num
  mov edx, 5
  int 80h

  ;Exit code
  mov eax, 1
  mov ebx, 0
  int 80h

