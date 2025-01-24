#include <stdio.h>
#include <stdlib.h>

// easier definition
typedef struct s_dynamic_array
{
	int	*ptr;
	int	size;
}		t_dynamic_array;

// definition in C
int	main(void)
{
	int	*ptr;
	int     *ptrtmp;
        int	size;
	int	i;

	size = 10;
	ptr = (int *)malloc(size * sizeof(int));
	if (ptr == NULL)
		printf("mem not allocated");
	i = 0;
        
        ptrtmp = ptr;
	while (i < size)
	{
                printf("at index %p, data %d is being saved\n", ptrtmp++, i);
		ptr[i] = i + 1;
		++i;
	}
	printf("at index %p, data %d is being saved\n", ptrtmp++, ptr[--i]);
	
	i = 0;
	while (i < size)
	{
		printf("%d, ", ptr[i]);
		++i;
	}
	return (0);
}
