#include <stdlib.h>

#define ELEM_AT(arr, i, w) (((char*)arr) + ((i)*(w)) // could be done like that

void	*ft_calloc(size_t nmemb, size_t size);

void	*ft_memcpy(void *dest[], const void *src[], size_t n);

void	*ft_freaky_memcpy(void *dest[restrict n], const void *src[restrict n], size_t n);

void	*bubblesort(void* arr, size_t size, int (*comparator)(void*, void*))
{
	if (!arr || !comparator)
		return NULL;

	int i;
	int j;
	void *tmp;

	if ((tmp = ft_calloc(1, size)) == NULL)
		return NULL;
	
	i = 0;
	while (i++ < size-1)
	{
		j = 0;
		while (j++ < size-1)
		{
			if (comparator(ELEM_AT(arr, j, size), elem_at(arr, j+1, size)) < 0)
			{
				ft_memcpy(tmp, ELEM_AT(arr, j, size), size);
				ft_memcpy(ELEM_AT(arr, j, size), elem_at(arr, j+1, size), size);
				ft_memcpy(ELEM_AT(arr, j+1, size), tmp, size);
			}
		}
	
	free(tmp);
	return arr;
}
