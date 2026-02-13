.section .bss
.globl ram
.lcomm ram, 256   # Reserve 256 bytes of RAM

.section .text
.globl fill_ram

fill_ram:
    mov $0, %eax        # Starts at 0
    mov $10, %ecx       # Set N = 10

sum_loop:
    add %ecx, %eax      # Add current N to sum
    loop sum_loop       # Decrement ECX and jump if not zero

    # Store the result
    movb %al, ram+0x50  

    ret
.section .note.GNU-stack,"",@progbits
