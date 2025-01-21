#include <stdbool.h>
#include <stdio.h>

bool	equal_num(int x)
{
	return (x % 2 == 0);
}

// for this we'll use null terminated int pointer
void	print_if(int *xs, bool (*predicate)(int))
{
	int	i;

	i = 0;
	while (xs[i] != 0)
	{
		if (predicate(xs[i]))
			printf("%d\n", xs[i]);
		i++;
	}
}

int	main(void)
{
	int	xs[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0};

	print_if(xs, equal_num);
	return (0);
}
