#include "../include/include.h"

void	ft_foreach(void *arr, int len, size_t elem_size, void(*f)(void *))
{
	int		i;
	void	*elem;

	i = 0;
	while (i < len)
	{
		elem = (char *)arr + i * elem_size;
		f(elem);
		i++;
	}
}

