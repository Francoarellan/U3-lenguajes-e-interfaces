;Arellano Moreno Franco Antonio Practica U3 Lenguajes e Interfaces Jose Luis Medina Jimenez
INCLUDE Irvine32.inc

.data

.code
main PROC                       ; Inicio del procedimiento principal
	mov eax, [esp]              ; Copia en EAX el valor del tope de la pila (dirección de retorno al SO)
	call WriteHex               ; Imprime el valor de EAX en hexadecimal
	call Crlf                   ; Salto de línea
	call procUno                ; Llama a procUno y guarda en la pila la dirección de la siguiente línea
	exit                        ; Termina la ejecución del programa
main ENDP                       ; Fin del procedimiento principal
	
procUno PROC                    ; Inicio del primer subprocedimiento
	mov eax, [esp]              ; Obtiene del tope de la pila la dirección de retorno hacia 'main'
	call WriteHex               ; Muestra la dirección de retorno en hexadecimal
	call Crlf                   ; Salto de línea
	call procDos                ; Llama a procDos y apila la dirección de retorno hacia procUno
	
	ret                         ; Extrae la dirección de retorno de la pila y vuelve a 'main'
procUno ENDP                    ; Fin de procUno

procDos PROC                    ; Inicio del segundo subprocedimiento
	mov eax, [esp]              ; Obtiene del tope de la pila la dirección de retorno hacia 'procUno'
	call WriteHex               ; Muestra la dirección de retorno en hexadecimal
	call Crlf                   ; Salto de línea
	ret                         ; Extrae la dirección de retorno de la pila y vuelve a 'procUno'
procDos ENDP                    ; Fin de procDos

END main