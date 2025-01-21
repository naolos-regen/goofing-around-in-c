#include <stdio.h>
#include <stdlib.h>

//	own compate_to converts void * to int * using (*(int *)x1)
int	compare_to(const void *x1, const void *x2)
{
	return (*(int *)x1) - (*(int *)x2);
}

int	main(void)
{
	int		xs[] = {1, 5, 20, 10, 321, 23190, 3201, 321};
	size_t	len;
	int		i;

	len = sizeof(xs) / sizeof(xs[0]);
	qsort(xs, len, sizeof(int), compare_to);
	i = 0;
	while (i < len)
		printf("%d\n", xs[i++]);
	return (0);
}
