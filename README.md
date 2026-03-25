# Lab 1
gcc -nostdlib -no-pie print_hello.s -o hello
./hello

gcc -Wall -no-pie Task_1.s print_ram.c -o task1
./task1

gcc -Wall -no-pie Task_2.s print_ram.c -o task2
./task2

gcc -Wall -no-pie Task_3.s print_ram.c -o task3
./task3

gcc -Wall -no-pie Task_4.s print_ram.c -o task4
./task4

TA grading tip: If we can compile from your README, we can grade fast and fairly.
