#include <stdio.h>

struct foo
{
	unsigned int a;
	unsigned int b;
	unsigned int c;
	unsigned int d;
};

struct foo2
{
	unsigned int a:1;
	unsigned int b:1;
	unsigned int c:1;
	unsigned int d:1;
};

int 	main(void)
{
	printf("%zu\n", sizeof(struct foo));
	printf("%zu\n", sizeof(struct foo2));

	return (0);
}
