.section .bss
.globl ram
.lcomm ram, 256   # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram   # Make function visible to C program

fill_ram:
# Store FFh into RAM locations 50H - 58H using direct addressing
    mov $ram, %rdi
    add $0x50, %rdi

    movb $0xFF, (%rdi)  #ram+0x50
    inc %rdi
    movb $0xFF, (%rdi)  #ram+0x51
    inc %rdi
    movb $0xFF, (%rdi)  #ram+0x52
    inc %rdi  
    movb $0xFF, (%rdi)  #ram+0x53
    inc %rdi  
    movb $0xFF, (%rdi)  #ram+0x54
    inc %rdi  
    movb $0xFF, (%rdi)  #ram+0x55
    inc %rdi  
    movb $0xFF, (%rdi)  #ram+0x56
    inc %rdi      
    movb $0xFF, (%rdi)  #ram+0x57
    inc %rdi  
    movb $0xFF, (%rdi)  #ram+0x58

    ret   # Return control back to C program
.section .note.GNU-stack,"",@progbits
