#include <stdio.h>
#include "../include/include.h"


int	main(void)
{
	int		arr[] = {5, 2, 9, 1, 5, 6, 100, 2190, 28};
	int		n = sizeof(arr) / sizeof(arr[0]);
	void	*data[n];

	ft_foreach(arr, n, sizeof(int), print_int);
	for (int i = 0; i < n; i++)
	{
		data[i] = &arr[i];
	}
	quicksort(data, 0, n - 1, int_compar);
	printf("---------------------------------------\n");
	ft_foreach(data, n, sizeof(void *), print_char);
	return (0);
}
