;Arellano Moreno Franco Antonio Practica U3 Lenguajes e Interfaces Jose Luis Medina Jimenez
INCLUDE Irvine32.inc

.data
	mensajeInicio BYTE "inicio de programa",0
	mensajeProcedimiento BYTE "Estoy dentro del procedimiento",0
	mensajeFin BYTE "Fin del programa",0

.code
main PROC
	mov edx, OFFSET mensajeInicio
	call WriteString
	call Crlf

	;Primera llamada
	call mensajeAviso

	mov eax, 10

	;Segunda llamado 
	call mensajeAviso ;/EIP salta a las instrucciones dentro del procedimiento
	mov eax, 20

	mov edx, OFFSET mensajeFin
	call WriteString
	call Crlf

	exit

	main ENDP

	mensajeAviso PROC
		mov edx, OFFSET mensajeProcedimiento
		call WriteString
		call Crlf
		ret   ;/recupera la direccion de EIP a la seguiente instruccion de donde se CALL el procedimiento
		mensajeAviso ENDP

	END main