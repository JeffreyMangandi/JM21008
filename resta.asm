section .data

   msg db "Ingrese los tres numeros del 1 al 9 separados por espacios: ", 0xA, 0xD 
   len equ $- msg 

   msg4 db "El resultado de la resta es: "
   len4 equ $- msg4
   
   line_break db 0xA     ;salto de linea 

section .bss

   nums resb 6 ; Reserva espacio para los tres números y dos espacios para los separadores
   result  resb 1    

section .text
   global _start    
	
_start:     
  
   ;limpiando registros
   xor ax, ax
   xor bx, bx
   xor cx, cx

   ;Solicitar los tres números
   mov eax, 4         
   mov ebx, 1         
   mov ecx, msg         
   mov edx, len 
   int 80h               

   ; Leer los números ingresados
   mov eax, 3 
   mov ebx, 0  
   mov ecx, nums 
   mov edx, 6 ; Leemos 6 caracteres para los 3 números y los 2 espacios
   int 80h           

   ;Convertir los números ASCII a valores decimales
   mov al, [nums] ; Primer número
   sub al, '0'
   mov bl, [nums + 2] ; Segundo número
   sub bl, '0'
   mov cl, [nums + 4] ; Tercer número
   sub cl, '0'

   ; Restar los números
   sub al, bl
   sub al, cl

   ;Convertir el resultado a ASCII
   add al, '0'

   ;Guardar el resultado en result
   mov [result], al

   ;Mostrar el resultado
   mov eax, 4        
   mov ebx, 1
   mov ecx, msg4         
   mov edx, len4        
   int 80h

   mov eax, 4        
   mov ebx, 1
   mov ecx, result         
   mov edx, 1          
   int 80h
   
   ;salto de linea
   mov eax, 4
   mov ebx, 1
   mov ecx, line_break
   mov edx, 1
   int 80h

   ;Salida del programa   
   mov eax, 1   
   mov ebx, 0 
   int 80h

