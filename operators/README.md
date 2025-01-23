It is a simple understanding process, however it may not be clear to some. Let's start with **Arithmetic Operators** (also using x86 assembly for this example)


| OPERATOR NAME  | SYNTAX       | ASSEMBLY          | PRECEDENCE  |
| -------------- | ------------ | ----------------- | ----------- |
| ADDITION       | $x + y$      | ADD x, y          | 4 L-R       |
| SUBTRACTION    | $x - y$      | SUB  x, y         | 4 L-R       |
| UNARY PLUS     | $+x$         | see nao/example02 | 2 R-L       |
| UNARY MINUS    | $-x$         | see nao/example02 | 2 R-L       |
| MULTIPLICATION | $x * y$      | MUL x, y          | 3 L-R       |
| DIVISION       | $x / y$      | DIV x, y          | 3 L-R       |
| REMAINDER      | x % y        | (ARM = MOD)**     | 3 L-R       |
| POWER?         | $x ^ y$\|x^y | POW??             | ??????????? |
| SQRT??         | $√x$         | SQRT?? LOL        | ??????????? | 
| INCREMENT      | INC X        | INC X \| ADD 1, x |             |
| Prefix INC     | $++x$        | see nao/example00 | 2 R-L       |
| Postfix INC    | $x++$        | see nao/example01 | 1 L-R       |
| DECREMENT      | DEC x        | DEC X \| SUB 1, x |             |
| Prefix INC     | $--x$        | see nao/example00 | 2 R-L       |
| Postfix INC    | $x++$        | see nao/example01 | 1 L-R       |

- note that I'm not using 32-bit Register, 16-bit Register, 8-bit Register, or any Register not using Memory address not even any 32-bit immediate, 16-bit immediate, 8-bit immediate ... for the purpose of simply understanding what operator in CPU is used

** MOD operand exists in ARM, in x86 we need to do shanenigans in nao/example03

*** either using
#include <math.h> or using the one in nao/example03 :=D 
[https://git.musl-libc.org/cgit/musl/tree/src/math/pow.c](https://git.musl-libc.org/cgit/musl/tree/src/math/pow.c) 
^ it gets pretty messy trying to explain that.

**** same call as before either using #include <math.h> or trying to learn from nao/example03
**credits example03/int_sqrt.c => int ft_sqrt(int nb)** [Cheyo](https://github.com/0yech)


## Comparison/Relational Operators


| OPERATOR NAME            | SYNTAX  | PREDECENCE   |
| ------------------------ | ------- | ------------ |
| EQUAL TO                 | x == y  | 7 L-R        |
| NOT EQUAL TO             | x != y  | 7 L-R        |
| GREATER THAN             | x > y   | 6 L-R        |
| LESSER THAN              | x < y   | 6 L-R        |
| GREATER THAN OR EQUAL TO | x >= y  | 6 L-R        |
| LESSER THAN OR EQUAL TO  | x <= y  | 6 L-R        |
| THREE WAY COMPARISON     | x <=> y | NOT POSSIBLE |

## Logical Opearators

| OPERATOR NAME            | SYNTAX  | PREDECENCE   | ASSEMBLY   |
| ------------------------ | ------- | ------------ | ---------- |
| Logical Negation (NOT)   | !x      | 2  L-R       | NOT x      |
| Logical AND              | x && y  | 11 L-R       | AND x, y   |
| Logical OR               | x || y  | 11 L-R       | OR  x, y   |

Assembly AND/OR <Destination> <Source> ; NOT <Destination> which does <destination> = ~<destination>
not to confuse it with NEG, NEG takes 2 Complements to negate and NOT takes only one

## Bitwise Operators

| OPERATOR NAME            | SYNTAX  | PREDECENCE    |
| ------------------------ | ------- | ------------- |
| Bitwise NOT              | ~x      | 2 R-L         |
| Bitwise AND*             | x & y   | 8 L-R         |
| Bitwise OR               | x | y   | 10 L-R        |
| Bitwise XOR              | x ^ y   | 9 L-R         |
| Bitwise Left Shift       | x << y  | 5 L-R         |
| Bitwise Right Shift      | x >> y  | 5 L-R         |

* Not to confuse that with the Address-of
```c
int main(void)
{
    int i;
    void * a;
 
    i = 0;
    a = &i;

    return (0);
}
```
