#include <stdio.h>

int 	factorial(int n, int a)
{
tco:
	if (n == 0)
		return (a);

	a = a * n;
	n = n - 1;

	goto tco;
}

int 	main(void)
{
	for (int i = 0; i < 8; ++i)
		printf("%d! == %d\n", i ,factorial(i,1));
	return (0);
}

