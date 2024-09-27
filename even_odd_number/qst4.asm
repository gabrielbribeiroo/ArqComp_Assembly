; Escreva um programa que leia uma constante num�rica inteira e, em seguida, escreva na tela se o
; n�mero � par ou �mpar.

.686
.model flat, stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\msvcrt.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\msvcrt.lib
include \masm32\macros\macros.asm

.data
    num dd 5; Constante num�rica
    
.code
start:
    mov eax, num ; Carrega num no registrador eax
    test eax, 1 ; Faz um AND bit a bit de EAX com 1. Se o resultado for 0, o n�mero � par.
    jz par ; se o bit menos for significativo for 0 (resultado da opera��o AND), salta para n�mero par

impar:
    printf("O numero %d eh IMPAR!\n", eax)
    jmp fim ; Pula para o final do programa

par:
    printf("O numero %d eh PAR!\n", eax)

fim:
    invoke ExitProcess, 0 ; Finaliza o programa

end start