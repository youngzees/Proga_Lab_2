.global _start

.text
_start:
    sub $256, %rsp
    
    # Читаем N
    xor %eax, %eax
    xor %edi, %edi
    mov %rsp, %rsi
    mov $16, %edx
    syscall
    
    # Переводим N из ASCII в число
    movb (%rsp), %al
    sub $'0', %al
    mov %al, %r12b          # r12b = N
    
    # Читаем строку с числами
    xor %eax, %eax
    xor %edi, %edi
    mov %rsp, %rsi
    mov $256, %edx
    syscall
    
    mov %rsp, %r13          # r13 = указатель на строку
    xor %r14d, %r14d        # r14 = счётчик чисел
    
next_num:
    cmpb %r12b, %r14b
    jge exit
    
    # Пропускаем пробелы
skip_spaces:
    movb (%r13), %al
    cmpb $' ', %al
    jne find_end
    inc %r13
    jmp skip_spaces
    
    # Ищем конец числа
find_end:
    mov %r13, %r15          # r15 = начало числа
len_loop:
    movb (%r13), %al
    cmpb $' ', %al
    je got_len
    cmpb $0, %al
    je got_len
    cmpb $10, %al
    je got_len
    inc %r13
    jmp len_loop
    
got_len:
    mov %r13, %r8           # r8 = конец числа
    dec %r8
    
check_pal:
    cmp %r8, %r15
    jge is_yes
    
    movb (%r15), %al
    movb (%r8), %bl
    cmp %bl, %al
    jne is_no
    
    inc %r15
    dec %r8
    jmp check_pal
    
is_yes:
    mov $1, %eax
    mov $1, %edi
    lea yes_msg(%rip), %rsi
    mov $4, %edx
    syscall
    jmp next
    
is_no:
    mov $1, %eax
    mov $1, %edi
    lea no_msg(%rip), %rsi
    mov $3, %edx
    syscall
    
next:
    inc %r14
    cmpb (%r13), %al
    jmp next_num

exit:
    add $256, %rsp
    xor %edi, %edi
    mov $60, %eax
    syscall

.data
yes_msg: .asciz "Yes "
no_msg: .asciz "No "