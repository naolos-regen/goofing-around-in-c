#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

int	add(int x, int y)
{
	return (x + y);
}

int	main(void)
{
	int	xs[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	int	(*f)(int, int);

	(f)(int, int) = add;
	printf("%d\n", f(3, 4));
	return (0);
}
