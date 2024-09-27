; Escreva um programa que implemente a seguinte senten�a da linguagem Java:
; a = b + c + 100;
; As vari�veis a, b e c s�o valores inteiros armazenados na mem�ria. 
; O conte�do das vari�veis b e c dever�o ser inicializados com valores definidos por voc�.

.686
.model flat, stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\msvcrt.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\msvcrt.lib
include \masm32\macros\macros.asm

.data ; Se��o de dados, na qual as vari�veis s�o declaradas e inicializadas
    var_b dd 10 ; Vari�vel 'var_b' do tipo double word (4B) inicializada com 10
    var_c dd 5 ; Vari�vel 'var_c' do tipo double word (4B) inicializada com 5
    var_a dd ? ; Vari�vel 'var-a' do tipo double word (4B) sem inicializa��o

.code ; Se��o de c�digo onde ficam as instru��es execut�veis
; R�tulo que marca o ponto de entrada do programa
start:
    ; Carrega os valores de 'b' e 'c' e realiza a opera��o
    mov eax, var_b ; Carrega o valor de 'b' no registrador eax
    add eax, var_c ; Adiciona o valor de 'c' ao registrador eax
    add eax, 100 ; Soma 100 ao valor do registrador eax
    mov var_a, eax ; Armazena o resultado em 'a'

    printf("Valor do somatorio: %d + %d + 100 = %d\n", var_b, var_c, var_a) ; Exibe o valor calculado
   
    invoke ExitProcess, 0 ; Finaliza o programa

end start ; Fim do c�digo principal, marca o t�rmino da fun��o start�e�do�programa