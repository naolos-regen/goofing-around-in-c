#include <stdio.h>

// goofy asf, but it works :'D
void	ft_swap(int *a, int *b)
{
	int	c;

	c = 1;
	while (c)
	{
		if (((*a & c) & ~(*b & c)) | (~(*a & c) & (*b & c)))
		{
			*a = ((*a & ~c) | (~*a & c));
			*b = ((*b & ~c) | (~*b & c));
		}
		c <<= 1;
	}
}

int	main(void)
{
	int a = -10;
	int b = -20;

	printf("%d, %d\n", a, b);

	ft_swap(&a, &b);

	printf("%d, %d\n", a, b);

	return (0);
}
