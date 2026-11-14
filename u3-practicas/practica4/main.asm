;Arellano Moreno Franco Antonio Practica U3 Lenguajes e Interfaces Jose Luis Medina Jimenez
INCLUDE Irvine32.inc
MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM

.data
MensajeInicio BYTE "BIENVENIDO A TU SALON FAVORITO", 0
MensajeFin BYTE "NOS VEMOS, VUELVA PRONTO", 0
.code
main PROC
    MostrarMensaje MensajeInicio
    MostrarMensaje MensajeFin
    exit

main ENDP

END main