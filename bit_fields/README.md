# Bit-Fields

## 6.9 Bit-Fields The C Programming Language

When storage place is at a premium, it may be necessary to pack several objets into a single machine word;
one common use is a set of single-bit flags in applications like compiler symbol tables. Externally-imposed data formats
such as interfaces to hardware dvices, also often require the ability to get at pieces of a word.

Imagine a fragment of a compiler that manipulates a symbol table. Each identifier in a program has a certain information
associated with it, for example, whether or not it is a keyword, whether or not it is external and/or static, and so on.
The most compart way to encode such information is a set of one-bit flags in a single char or int.

The usual way this is done is to define set of ``masks`` corresponding to the relevant big positions, as in
```c
#define KEYWORD  01
#define EXTERNAL 02
#define STATIC   04
```
or
```c
enum
{
    KEYWORD  = 01,
    EXTERNAL = 02,
    STATIC   = 04
};
```
The numbers must be powers of two. Then accessing the bits becomes a matter of ``bit-fiddlin`` with the shifting,
masking, and complementing operators that were described in **Chapter 2**

Certain idioms appear frequently:

```c
    flags |= EXTERNAL | STATIC;
```
turns the EXTERNAL and STATIC bits in flags, while
```c
    flags &= ~(EXTERNAL | STARIC):
```
turns them off, and 
```c
    // bit comparison
    if ((flags & (EXTERNAL | STATIC)) == 0) ...
```
is true if both bits are off.

Although these idoms are readily mastered, as an alternative C offers capability of defining and accessing fields
within a word directly rather than by bitwise logical operators. A ``bit-field`` or ``field`` for short, is a set of adjacent
bits within a single implementation-defined storage unit that we will call a ``word``. For instance, the symbol table
``#define``s above could be replaced by the definition of three fields
```c
struct
{
    unsigned int is_keyword : 1;
    unsigned int is_extern  : 1;
    unsigned int is_static  : 1;
} flags;
```
This defines a variable table called ``flags`` that contains three 1-bit fields. The number following the colon represents the field width in bits. The fields are declared unsigned int to ensure that they are unsigned quantitnies. 

Individual fields are referenced in the same way as other structure members: ``flags.is_keyword, flags.is_extern,`` etc. Fields behave like small integers, and may participate in arithmetic expressions just like other integers. Thus the previous examples may be written more naturally as
```c
    flags.is_extern = flags.is_static = 1;
```
to turn the bits on;
```c
    flags.is_extern = flags.is_static = 0;
```
to turn them off; and
```c
    if(flags.is_extern == 0 && flags.is_static == 0)
```
to test them

Almost everything about fields is implementation-dependent/ Whether a field may overlap a word boundary is implementation-defined. Fields need not be names; unnamed fields (a colon and width only) are used for padding. The special width 0 may be used to force an alignment at the next word boundary.

Fields are assigned left to right on some machines and right to left on others. This means that although fields are useful
for maintaining internally-defined data structures, the question of which end comes first has to be carefully considered when picking apart externally-defined data; programs that depend on such things are not portable. Fields may be declared only as ``int``s; for portability, specify ``signed`` or ``unsigned`` explicitly. They are not arrays and they do not have addresses, so the & operator cannot be applied on them.

## 20.8 Bit-Fields Beej's Guide to C Programming

rare use, cause of large spaces.

```c
#include <stdio.h>

struct foo
{
    unsigned int a;
    unsigned int b;
    unsigned int c;
    unsigned int d;
};

int main(void)
{
    printf("%zu\n", sizeof(struct foo));
}
```
prints 16. Which makes sense cause unsigned ints are 4 bytes long. (depending on System)

If we knew how many bits we were storing then we can specify the maximum number of bits that values can take
```c
struct foo
{
    unsigned int a:5;
    unsigned int b:5;
    unsigned int c:3;
    unsigned int d:3;
};
```
"Now when I ask C how big my struct foo is it tells me 4! It as 16 bytes now it's only 4. It has "packed" those 4 values down to 4 bytes, which is four-fold memory savings.

The Tradeoff is, of course that the 5-bit field can only withhold the values from 0-31 and 3 bit fields can only hold values from 0-7. But life's al about compromise, after all."

## Later read chapters (177 page.) [beej C Guide](https://beej.us/guide/bgc/)
**20.8.1** Non-Adjacent Bit-Fields.
**20.8.2** Signed or Unsigned ints.
**20.8.3** Unnamed Bit-Fields.
**20.8.4** Zero-Width Unnamed Bit-Fields.


