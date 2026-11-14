;Arellano Moreno Franco Antonio Practica U3 Lenguajes e Interfaces Jose Luis Medina Jimenez
INCLUDE Irvine32.inc

.data
	
.code
main PROC                       ; Inicio del procedimiento principal
	mov ebx, 10                 ; Carga 10 en EBX para comprobar después que su valor se preserva
	push 1                      ; Empuja el primer parámetro (1) a la pila (ocupará [ebp+12])
	push 2                      ; Empuja el segundo parámetro (2) a la pila (ocupará [ebp+8])

	call sumarPila              ; Guarda la dirección de retorno en la pila y salta a sumarPila

	nop                         ; Instrucción vacía útil para puntos de interrupción
	exit                        ; Finaliza el programa
main ENDP                       ; Fin del procedimiento principal

sumarPila PROC                  ; Inicio del procedimiento sumarPila
	push ebp                    ; Guarda el valor anterior de EBP en la pila para preservarlo
	mov ebp, esp                ; Establece el marco de pila actual apuntando a la cima de ESP

	push ebx                    ; Guarda EBX en la pila porque el procedimiento lo va a modificar
	mov eax, [ebp+8]            ; Accede al segundo parámetro apilado (valor 2)
	mov ebx, [ebp+12]           ; Accede al primer parámetro apilado (valor 1)

	imul eax, ebx               ; Multiplica EAX * EBX (2 * 1) y guarda el resultado en EAX
	
	pop ebx                     ; Restaura el valor original de EBX (10) desde la pila
	pop ebp                     ; Restaura el puntero base EBP del llamador
	ret 8                       ; Retorna a 'main' y suma 8 a ESP para limpiar los 2 parámetros de la pila
sumarPila ENDP                  ; Fin del procedimiento sumarPila

END main