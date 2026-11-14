;Arellano Moreno Franco Antonio Practica U3 Lenguajes e Interfaces Jose Luis Medina Jimenez
INCLUDE Irvine32.inc

.data
    cadena BYTE 50 DUP(0)       ; Reserva un búfer de 50 bytes inicializados en 0 para almacenar la entrada
    msgPedir BYTE "Ingresa una cadena (o presiona Enter para dejarla vacia): ", 0 ; Mensaje de solicitud
    msgVacia BYTE "La cadena ESTA vacia.", 0                                     ; Mensaje si no se escribió nada
    msgNoVacia BYTE "La cadena NO esta vacia.", 0                                ; Mensaje si hay caracteres

.code
main PROC                       ; Inicio del procedimiento principal
    ; 1. Pedir y leer la cadena
    mov  edx, OFFSET msgPedir   ; Carga la dirección del mensaje de solicitud en EDX
    call WriteString            ; Muestra el mensaje en consola

    mov  edx, OFFSET cadena     ; Indica a ReadString dónde guardar los caracteres leídos
    mov  ecx, SIZEOF cadena     ; Indica el tamaño máximo del búfer (50 bytes)
    call ReadString             ; Lee la entrada del teclado hasta presionar Enter (guarda longitud en EAX)

    ; 2. Validar si está vacía comprobando el primer byte
    cmp  BYTE PTR [cadena], 0   ; Compara el primer byte de 'cadena' con 0 (terminador nulo)
    je   EsVacia                ; Si es igual a 0, el usuario solo presionó Enter y salta a EsVacia

NoEsVacia:                      ; Etiqueta ejecutada cuando la cadena contiene caracteres
    mov  edx, OFFSET msgNoVacia ; Carga la dirección del mensaje 'msgNoVacia'
    call WriteString            ; Imprime el mensaje en pantalla
    call Crlf                   ; Salto de línea
    jmp  Fin                    ; Salta a 'Fin' para evitar ejecutar el bloque 'EsVacia'

EsVacia:                        ; Etiqueta ejecutada cuando el primer byte de la cadena es 0
    mov  edx, OFFSET msgVacia   ; Carga la dirección del mensaje 'msgVacia'
    call WriteString            ; Imprime el mensaje en pantalla
    call Crlf                   ; Salto de línea

Fin:                            ; Etiqueta de salida del programa
    exit                        ; Finaliza la ejecución del proceso
main ENDP                       ; Fin del procedimiento principal

END main