Actividad evaluada 5: Portafolio

1-Resta de 3 numeros
	Programa en Ensamblador NASM: Resta de 3 Numeros

Este es un programa escrito en ensamblador NASM que solicita al usuario tres números enteros, los resta entre sí y muestra el resultado, los registros de 16 bits se utilizaron para realizar operaciones aritméticas.

	Funcionalidad: El programa sigue los siguientes pasos:

1. Solicita al usuario que ingrese los 3 numeros separados por espacio.
2. Lee los números ingresados por el usuario.
3. Realiza la resta de los numeros.
4. Muestra el resultado de la división.

Para compilar y ejecutar el programa:

1. Asegúrate de tener instalado NASM y un compilador compatible con la sintaxis de 32 bits
2. Guarda el código en un archivo con extensión ".asm"
3. Abre una terminal y navega al directorio donde guardaste el archivo.
4. Compila el código ensamblador
5. Ejecuta el programa con el comando:
    nasm -f elf division.asm -o division.o
    ld -m elf_i386 division.o -o division

2-Multiplicacion
	Programa en Ensamblador NASM: Multiplicacion de Dos Numeros

Este es un programa escrito en ensamblador NASM que solicita al usuario dos números enteros, los multiplica entre sí y muestra el resultado si el resultado es menor a 9 los registros de 8 bits se utilizaron principalmente para manipular datos individuales. 

	Funcionalidad: El programa sigue los siguientes pasos:

1. Solicita al usuario que ingrese el primer número.
2. Lee el primer número ingresado por el usuario.
3. Solicita al usuario que ingrese el segundo número.
4. Lee el segundo número ingresado por el usuario.
5. Realiza la multiplicacion del primer número con el segundo número.
6. Muestra el resultado de la multiplicacion.

Para compilar y ejecutar el programa:

1. Asegúrate de tener instalado NASM y un compilador compatible con la sintaxis de 32 bits
2. Guarda el código en un archivo con extensión ".asm"
3. Abre una terminal y navega al directorio donde guardaste el archivo.
4. Compila el código ensamblador
5. Ejecuta el programa con el comando:
    nasm -f elf division.asm -o division.o
    ld -m elf_i386 division.o -o division

3-Division
	Programa en Ensamblador NASM: División de Dos Números

Este es un programa escrito en ensamblador NASM que solicita al usuario dos números enteros, los divide entre sí y muestra el resultado. 

	Funcionalidad: El programa sigue los siguientes pasos:

1. Solicita al usuario que ingrese el primer número.
2. Lee el primer número ingresado por el usuario.
3. Solicita al usuario que ingrese el segundo número.
4. Lee el segundo número ingresado por el usuario.
5. Realiza la división del primer número entre el segundo número.
6. Muestra el resultado de la división.

Para compilar y ejecutar el programa:

1. Asegúrate de tener instalado NASM y un compilador compatible con la sintaxis de 32 bits
2. Guarda el código en un archivo con extensión ".asm"
3. Abre una terminal y navega al directorio donde guardaste el archivo.
4. Compila el código ensamblador
5. Ejecuta el programa con el comando:
    nasm -f elf division.asm -o division.o
    ld -m elf_i386 division.o -o division

