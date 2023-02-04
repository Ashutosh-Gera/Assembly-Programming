global main
extern printf, scanf

section .text
main:
    push rbp ; keep the stack aligned
    mov rbp, rsp
    sub rsp, 16  ;

    ;body 
    xor eax, eax        ;
    lea rdi, [msg1]     ;entering msg
    call printf

    mov eax,0
    lea rdi, [format]
    lea rsi, [number]
    call scanf

    mov edx, [number]
    ;mov rsi, [rbp - 4]
    lea rdi, [msg2]
    xor eax, eax
    call printf

    xor eax, eax        ;
    lea rdi, [msg3]     ;entering msg
    call printf

    mov eax,0
    lea rdi, [format2]
    lea rsi, [string]
    call scanf


    mov rsi, string
    ;mov rsi, [rbp - 4]
    lea rdi, [msg4]
    xor eax, eax
    call printf

    add rsp, 16
    leave
    ret

section .data
    msg1: db "Enter a number: ",0
    msg2: db "Entered number: %d",10,0
    format: db "%ld",0
    msg3: db "Enter a string: ",0
    msg4: db "Entered string: %s",10,0
    format2: db "%s",0
    number: dd 8
    string: times 16 db 0