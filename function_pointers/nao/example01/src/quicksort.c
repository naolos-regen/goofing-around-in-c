#include "../include/include.h"

void	swap_vars(void **data, int i, int j)
{
	void	*tmp;

	tmp = data[i];
	data[i] = data[j];
	data[j] = tmp;
}

void	quicksort(void **data, int left, int right, int (*compar)(void *,
			void *))
{
	int	i;
	int	last;

	void swap_vars(void **data, int, int);
	if (left >= right)
		return ;
	last = left;
	i = left + 1;
	while (i <= right)
	{
		if ((*compar)(data[i], data[left]) < 0)
			swap_vars(data, ++last, i);
		i++;
	}
	swap_vars(data, last, left);
	quicksort(data, left, last - 1, compar);
	quicksort(data, last + 1, right, compar);
}
