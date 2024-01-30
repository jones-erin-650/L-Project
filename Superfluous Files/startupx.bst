LCC Assemble/Link/Interpret/Debug Ver 5.8  Thu Dec 07 18:53:36 2023
Jones, Erin, S

Header
o
S     0001
E     0001 main
C

Loc          Code                   Source Code
                                    .extern main
                                    .start startupx
0000  1111 0000 0000 0000           halt
0001  0100 1000 0000 0000 startupx: bl main
0002  1111 0000 0000 0000           halt
o

Output file startupx.o needs linking

========================================== Program statistics
Input file name       =      startupx.a
Instructions executed =    0 (hex)     0 (dec)
Program size          =    3 (hex)     3 (dec)
Max stack size        =    0 (hex)     0 (dec)
Load point            =    0 (hex)     0 (dec)
