// using a void pointer is impossible in that case,
// because we would need to cast it as int, double, float etc
// creating a double power is barely possible for me :'D, so I'll just not do it ait :=D

#include <stdio.h>

// example C05/ex02/ft_iterative_power.c
int	ft_iterative_power(int x, int y)
{	
	int	res;
	if (y < 0)
		return (0);
	if (y == 0)
		return (1);

	res = 1;
	while (y > 0)
	{
		res *= x;
		y--;
	}
	return (res);
}
// example C05/ex03/ft_recursive_power.c
int	ft_recursive_power(int x, int y)
{
	if (y < 0)
		return (0);
	if (y == 0)
		return (1);
	return (x * ft_recursive_power(x, y - 1));
}

int	main(void)
{
	int	x;
	int	y;
	
	x = 2;
	y = 3;

	printf("%d\n", ft_iterative_power(x, y));
	printf("%d\n", ft_recursive_power(x, y));

	return (0);
}
