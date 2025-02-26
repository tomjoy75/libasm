section .text
    global _start
    global _main

_start:
	call _main
	mov rdi, 0  ; Code de retour 0 (succès)
	mov rax, 60 ; Syscall exit (60 = exit)
	syscall     ; Quitte proprement

_main:
    ret

