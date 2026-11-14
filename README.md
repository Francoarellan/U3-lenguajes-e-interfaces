# U3 - Lenguajes e Interfaces
Franco Antonio Arellano Moreno


---

## 📋 Índice de Prácticas

- **[Práctica 1: Inspección de la Pila y Direcciones de Retorno](u3-practicas/Practica/main.asm)**  
  Demuestra el comportamiento del puntero de pila (`ESP`) durante llamadas anidadas a procedimientos (`CALL` y `RET`). Lee directamente el tope de la pila (`[esp]`) para imprimir en hexadecimal las direcciones de retorno almacenadas automáticamente por el procesador.

- **[Práctica 2: Flujo de Ejecución y Reutilización de Procedimientos](u3-practicas/practica2/main.asm)**  
  Ilustra la modularidad en ensamblador mediante múltiples llamadas a un mismo procedimiento (`mensajeAviso`). Muestra cómo el puntero de instrucción (`EIP`) salta hacia la subrutina y recupera su posición original al finalizar con `RET`, acompañado de impresión de cadenas (`OFFSET` y `WriteString`).

- **[Práctica 3: Paso de Parámetros por Pila y Stack Frame](u3-practicas/practica3/main.asm)**  
  Implementa el paso de argumentos a un procedimiento mediante la pila (`PUSH`) y la creación de un marco de pila (*stack frame*) utilizando el registro base `EBP`. Accede a los parámetros con desplazamientos (`[ebp+8]`, `[ebp+12]`), ejecuta una multiplicación con signo (`IMUL`), preserva registros y libera la memoria de la pila al retornar (`RET 8`).

- **[Práctica 4: Definición y Uso de Macros](u3-practicas/practica4/main.asm)**  
  Introduce la creación de macros (`MACRO` / `ENDM`) para reutilizar bloques de código parametrizados sin la sobrecarga de llamadas a subrutinas. Define la macro `MostrarMensaje` para automatizar la carga de direcciones en `EDX` y su despliegue en consola.

- **[Práctica 5: Lectura de Cadenas y Validación en Memoria](u3-practicas/practica5/main.asm)**  
  Gestiona la entrada de texto por teclado almacenándola en un búfer (`DUP` y `ReadString`). Evalúa si la cadena ingresada está vacía inspeccionando directamente su primer byte en memoria (`BYTE PTR [cadena]`) para verificar la presencia del carácter terminador nulo (`0`) mediante saltos condicionales (`CMP` y `JE`).


