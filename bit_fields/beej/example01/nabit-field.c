#include <stdio.h>


struct	foo		  // sizeof(struct foo) == 16
{			
	unsigned int a:1; // since a is not adjacent to c
	unsigned int b;
	unsigned int c:1;
	unsigned int d;
};
// adjacent = Close to; lying near; Next to; adjointing


struct	foo2		  // sizeof(struct foo2) == 12
{
	unsigned int a:1;
	unsigned int b:1;
	unsigned int c;
	unsigned int d;
};

int	main(void)
{
	printf("%zu\n", sizeof(struct foo));
	printf("%zu\n", sizeof(struct foo2));

	return (0);
}
