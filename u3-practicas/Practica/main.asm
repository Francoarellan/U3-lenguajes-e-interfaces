;Arellano Moreno Franco Antonio Practica U3 Lenguajes e Interfaces Jose Luis Medina Jimenez
INCLUDE Irvine32.inc

.data


.code
main PROC 
	mov eax,[esp]
	call WriteHEx
	call Crlf
	call procUno
	exit
main ENDP
	
procUno PROC
	mov eax, [esp]
	call WriteHex
	call Crlf
	call procDos
	
	ret
procUno ENDP

procDos PROC
	mov eax, [esp]
	call WriteHex
	call Crlf
	ret
procDos ENDP

END main
