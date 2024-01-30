LCC Assemble/Link/Interpret/Debug Ver 5.8  Thu Dec 07 18:53:36 2023
Jones, Erin, S

Header
o
G     0000 main
E     0003 sub
G     0008 i
G     0009 j
C

Loc          Code                   Source Code
                                   .global i
                                   .global j
                                   .global main
                                   .extern sub
0000  1010 1110 0000 0000 main:    push lr
0001  1010 1010 0000 0000          push fp
0002  1010 1011 1000 1100          mov fp, sp

0003  0100 1000 0000 0001          bl sub+1

0004  1010 1101 0100 1100          mov sp, fp
0005  1010 1010 0000 0001          pop fp
0006  1010 1110 0000 0001          pop lr
0007  1100 0001 1100 0000          ret
0008  0000 0000 0000 0101 i:       .word 5     ; word equivalent t
0009  0000 0000 0000 0111 j:       .word 7
000a  0000 0011 1110 0111 c:       .word 999
o

Output file m1x.o needs linking

========================================== Program statistics
Input file name       =      m1x.a
Instructions executed =    0 (hex)     0 (dec)
Program size          =    b (hex)    11 (dec)
Max stack size        =    0 (hex)     0 (dec)
Load point            =    0 (hex)     0 (dec)
