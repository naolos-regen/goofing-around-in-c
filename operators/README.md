# Arithmetic, Relational, Tenary, Logical, Bitwise, Assignment, Member & pointer ... Operators

It is a simple understanding process, however it may not be clear to some.
Let's start with **Arithmetic Operators** (also using x86 assembly for this example)


+----------------+--------+-------------------+------------+
| Operator Name  | Syntax | ASSEMBLY*         | Predecence |
+----------------+--------+-------------------+------------+
| Addition       |  x + y | ADD x, y          |    4 L-R   |
| Subtraction    |  x - y | SUB x, y          |    4 L-R   |
| Unary Plus     |  +x    | see nao/example02 |    2 R-L   |
| Unary Minus    |  -x    | see nao/example02 |    2 R-L   |
| Multiplicaiton |  x * y | IMUL x, y | MUL x |    3 L-R   |
| Division       |  x / y | IDIV x, y | MUL y |    3 L-R   |
| Remainder      |  x % y | MOD .. (ARM)**    |    3 L-R   | <- % is taken as a remainder of division so it's cool :D
| Power          |  x^y?  | pow??             |    ?????   | <- ^ is used as an Bitwise Operator XOR, Pow is used as a function***
| Increment      |  x+=1  | INC x             |  1/2 LRRL  |
| Prefix inc     |  ++x   | see nao/example00 |    2 R-L   |
| Postfix inc    |  x++   | see nao/example01 |    1 L-R   |
| Decrement      |  x-=1  | DEC x             |  1/2 LRRL  |
| Prefix dec     |  --x   | see nao/example00 |    2 R-L   |
| Postfix dec    |  ++x   | see nao/example01 |    1 L-R   |
+----------------+--------+-------------------+------------+


* note that I'm not using 
32-bit Register, 16-bit Register, 8-bit Register, or any Register
not using Memory address 
not even any 32-bit immediate, 16-bit immediate, 8-bit immediate ...
for the purpose of simply understanding what operator in CPU is used 


** MOD operand exists in ARM, in x86 we need to do shanenigans in nao/example03a

*** either using #include <math.h> or using the one in nao/example03 :=D
https://git.musl-libc.org/cgit/musl/tree/src/math/pow.c
^ it gets pretty messy trying to explain that.



## Comparison/Relational Operators

+---------------------------+-----------+---------------+
| Operator Name             |   Syntax  |   Predecence  |
+---------------------------+-----------+---------------+
| Equal to                  |  x == y   |   7 L-R       |
| Not Equal to              |  x != y   |   7 L-R       |
| Greater than              |  x > y    |   6 L-R       |
| Less than                 |  x < y    |   6 L-R       |
| Greater than or eaual to  |  x >= y   |   6 L-R       |
| Less than or equal to     |  x <= y   |   6 L-R       |
| Three-way-comparison      | x <=> y*  | NOT POSSIBLE  |
+---------------------------+-----------+---------------+
 
