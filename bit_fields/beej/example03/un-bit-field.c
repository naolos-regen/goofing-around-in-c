#include <stdio.h>

// 20.8.3 Unnamed Bit-Fields
struct foo 
{
	unsigned char a:2;
	unsigned char dummy:5;
	unsigned char b:1;
};

struct foo2 //err ?
{
	unsigned char a:2;
	unsigned char :5;	// <-- unnamed bit-field!
	unsigned char b:1;
};

struct bar // compiler packs all into one unsigned int.
{			  // we use 1 unsigned int and ...
	unsigned int a:1; // ... we take the 1sr decimal and reserve it for a.
	unsigned int b:2; // ... we take the 2nd decimal and reserve it for b.
	unsigned int c:3; // ... we take the 3rd decimal and reserve it for c.
	unsigned int d:4; // ... we take the 4th decimal and reserve it for d.
			  // the len is 32 bits = 0b0000000000000000000000000000000
			  // a is reserved for this behaviour  0b0000 & 0b0001
			  // b is reserved for this behaviour  0b0000 & 0b0010
			  // c is reserved for this behaviour  0b0000 & 0b0100
			  // d is reserved for this behaviour  0b0000 & 0b1000
			  // so concluding that having 
			  // all 4 fields on would be (on off) 0b1111 & 0b0000
};

// and in order to have them in a different int we need to
struct bar2
{			  // here the difference is that we use 2 unsigned ints which overall is 8 bytes = 64 bits
	unsigned int a:1; // packs 2 unsigned int declaration into 1 since we only take the 1st and 2nd bit
	unsigned int b:2; // len = 4 bytes
	unsigned int :0;  // <-- Zero-width unnamed bit-field!
	unsigned int c:3; // packs 2 unsigned int cause we splitted them using zero unnamed bitfield
	unsigned int d:4; // len2 = 4 bytes + len = 4 bytes + 4 bytes = 8 bytes in total
	
			  // as then same as it goes but bar2.0b1111 != bar.0b1111 ?
			  // comparing that is tough, but comapring the insides of struct is the same
			  // in a sense of comparing the same insides with same insides, it wont provide me the nessesary
			  // comparison.
			  // however I'll checkout the objdump
};

int	compare_structs(const struct bar *bar1, const struct bar2 *bar2)
{
	return bar1->a == bar2->a && 
	       bar1->b == bar2->b && 
	       bar1->c == bar2->c && 
	       bar1->d == bar2->d;
}

int	main(void)
{
	printf("%zu\n", sizeof(struct foo));
	printf("%zu\n", sizeof(struct foo2));

	printf("%zu\n", sizeof(struct bar));
	printf("%zu\n", sizeof(struct bar2));

	struct bar  bar;
	struct bar2 bar2;

	bar.a  = 1; bar.b  = 1; bar.c  = 1; bar.d  = 1;
	bar2.a = 1; bar2.b = 1; bar2.c = 1; bar2.d = 1;
	
	if (compare_structs(&bar, &bar2))
		printf("eq");
	
	return (0);
}
