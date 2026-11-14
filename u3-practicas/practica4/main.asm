;Arellano Moreno Franco Antonio Practica U3 Lenguajes e Interfaces Jose Luis Medina Jimenez
INCLUDE Irvine32.inc

MostrarMensaje MACRO texto      ; Define una macro que recibe el parámetro 'texto'
    mov edx, OFFSET texto       ; Carga en EDX la dirección de memoria de la cadena pasada como argumento
    call WriteString            ; Imprime la cadena en consola
    call Crlf                   ; Salto de línea
ENDM                            ; Fin de la macro

.data
MensajeInicio BYTE "BIENVENIDO A TU SALON FAVORITO", 0 ; Cadena de bienvenida terminada en nulo
MensajeFin BYTE "NOS VEMOS, VUELVA PRONTO", 0          ; Cadena de salida terminada en nulo

.code
main PROC                       ; Inicio del procedimiento principal
    MostrarMensaje MensajeInicio ; Expande el código de la macro sustituyendo 'texto' por 'MensajeInicio'
    MostrarMensaje MensajeFin    ; Expande el código de la macro sustituyendo 'texto' por 'MensajeFin'
    exit                        ; Termina la ejecución del programa
main ENDP                       ; Fin del procedimiento principal

END main