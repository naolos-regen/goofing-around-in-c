#include <stdbool.h>
#include <stdio.h>

// 1st Way max cap (?) not present
// typedef unsigned int t_flag;
//#define FLAG_ADD (1<<0)
//#define FLAG_MUL (1<<1)
//#define FLAG_NOT (1<<2)

// 2nd Way max cap 4  bytes 4 * 8 = 32 flags (0-31)
// when defining   64 flags in practice you use
// typedef enum :  unsigned long int
// which will be   8  bytes 8 * 8 = 64 flags (0-63)
typedef enum
{
	FLAG_ADD = (1 << 0),
	FLAG_MUL = (1 << 1),
	FLAG_NOT = (1 << 2)
}		t_flag;

int	f(int x, t_flag flags)
{
	if (flags & FLAG_ADD)
		x += x;
	if (flags & FLAG_MUL)
		x *= x;
	if (flags & FLAG_NOT)
		x = ~x;
	return (x);
}

t_flag	not_add_rest_on(t_flag flags)
{
	flags &= ~FLAG_ADD;
	return (flags);
}

int	main(void)
{
	printf("%zu bytes\n", sizeof(t_flag));
	printf("------------------------\n");
	printf("%d\n", f(2, 0b000)); // NOT(0) MUL(0) ADD(0) = 2
	printf("%d\n", f(2, 0b001)); // NOT(0) MUL(0) ADD(1) = 2 + 2 = 4
	printf("%d\n", f(2, 0b010)); // NOT(0) MUL(1) ADD(0) = 2 * 2 = 4
	printf("%d\n", f(2, 0b011)); // NOT(0) MUL(1) ADD(1) = 2 + 2 = 4 * 4 = 16
	printf("%d\n", f(2, 0b100)); // NOT(1) MUL(0) ADD(0) = x = ~x = -3
	printf("%d\n", f(2, 0b101)); // NOT(1) MUL(0) ADD(1) = 2 + 2 = 4 = ~4 = -5
	printf("%d\n", f(2, 0b110)); // NOT(1) MUL(1) ADD(0) = 2 * 2 = 4 = ~4 = -5
	printf("%d\n", f(2, 0b111)); // NOT(1) MUL(1) ADD(1) = 2 + 2 = 4
				     //                        * 4 = 16 = ~16 = -17
	// will I get segfault if i try to ask for bigger bit (cause it may work)
	printf("%d\n", f(2, 0b10000000000000000000000000000000));
	printf("%d\n", f(2, 0b11111111111111111111111111111000));
		// nothing should happen cause there is no flag for that
	// Now how do I make it only USE THAT SET OF BITS and not get much more that I don't need????
	// beej/example00/bit-fields.c
	return (0);
}
