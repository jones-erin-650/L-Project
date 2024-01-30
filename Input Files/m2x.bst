LCC Assemble/Link/Interpret/Debug Ver 5.8  Thu Dec 07 18:53:37 2023
Jones, Erin, S

Header
o
G     0000 sub
e     0004 j
A     0011
V     0013 i
C

Loc          Code                   Source Code
                                    .extern i
                                    .extern j
                                    .global sub
0000  1111 0000 0000 0000 sub:      halt
0001  1010 1110 0000 0000           push lr
0002  1010 1010 0000 0000           push fp
0003  1010 1011 1000 1100           mov fp, sp

0004  0010 0001 1111 1111           ld r0, j-1
0005  0010 0010 0000 1011           ld r1, x
0006  0110 0010 0100 0000           ldr r1, r1, 0
0007  0001 0000 0000 0001           add r0, r0, r1
0008  0010 0010 0000 1010           ld r1, z
0009  0110 0010 0100 0000           ldr r1, r1, 0
000a  0001 0000 0000 0001           add r0, r0, r1
000b  1111 0000 0000 0010           dout r0
000c  1111 0000 0000 0001           nl

000d  1010 1101 0100 1100           mov sp, fp
000e  1010 1010 0000 0001           pop fp
000f  1010 1110 0000 0001           pop lr
0010  1100 0001 1100 0000           ret
0011  0000 0000 0001 0010 x:        .word z-1    
0012  0000 0000 0000 1011 c:        .word 11
0013  0000 0000 0000 0010 z:        .word i+2
o

Output file m2x.o needs linking

========================================== Program statistics
Input file name       =      m2x.a
Instructions executed =    0 (hex)     0 (dec)
Program size          =   14 (hex)    20 (dec)
Max stack size        =    0 (hex)     0 (dec)
Load point            =    0 (hex)     0 (dec)
