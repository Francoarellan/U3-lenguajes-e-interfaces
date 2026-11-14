;Arellano Moreno Franco Antonio Practica U3 Lenguajes e Interfaces Jose Luis Medina Jimenez
INCLUDE Irvine32.inc

.data
	mensajeInicio BYTE "inicio de programa", 0              ; Cadena inicial terminada en nulo (0)
	mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0 ; Cadena que imprimirá el procedimiento
	mensajeFin BYTE "Fin del programa", 0                   ; Cadena final terminada en nulo (0)

.code
main PROC                       ; Inicio del procedimiento principal
	mov edx, OFFSET mensajeInicio ; Carga en EDX la dirección de memoria de 'mensajeInicio'
	call WriteString            ; Imprime la cadena apuntada por EDX
	call Crlf                   ; Salto de línea

	; Primera llamada
	call mensajeAviso           ; Guarda en la pila la dirección de 'mov eax, 10' y salta a mensajeAviso

	mov eax, 10                 ; Asigna el valor 10 a EAX

	; Segunda llamada
	call mensajeAviso           ; EIP salta a las instrucciones dentro del procedimiento y guarda la dirección siguiente
	mov eax, 20                 ; Asigna el valor 20 a EAX

	mov edx, OFFSET mensajeFin  ; Carga en EDX la dirección de memoria de 'mensajeFin'
	call WriteString            ; Imprime el mensaje de despedida
	call Crlf                   ; Salto de línea

	exit                        ; Finaliza el programa
main ENDP                       ; Fin del procedimiento principal

mensajeAviso PROC               ; Inicio del procedimiento mensajeAviso
	mov edx, OFFSET mensajeProcedimiento ; Carga en EDX la dirección de 'mensajeProcedimiento'
	call WriteString            ; Imprime el mensaje en pantalla
	call Crlf                   ; Salto de línea
	ret                         ; Recupera de la pila la dirección para EIP y vuelve a la instrucción siguiente al CALL
mensajeAviso ENDP               ; Fin del procedimiento mensajeAviso

END main