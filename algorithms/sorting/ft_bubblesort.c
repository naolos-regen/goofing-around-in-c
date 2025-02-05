#include <stdlib.h>

#define ELEM_AT(arr, index, size) ((void *)((char *)(arr) + (index) * (size)))

/*
void	ft_memzero(void *to, size_t c)
{
	memset(to, 0, c);
}
*/
void	ft_bzero(void *s, size_t n)
{
	char	*str;
	size_t	i;

	i = 0;
	str = (char *)s;
	while (i < n)
	{
		str[i] = 0;
		i++;
	}
}

void	*ft_calloc(size_t nmemb, size_t size)
{
	void	*e;
	size_t	n;

	n = nmemb * size;
	e = malloc(n);
	if (!e)
		return (0);
	ft_bzero(e, n);
	return (e);
}
// check if it works correctly
void	*ft_memcpy(void *dest[], const void *src[], size_t n)
{
	unsigned char		*ds;
	const unsigned char	*sr;

	if (n == 0 || *dest == *src)
		return (dest);
	
	ds = (unsigned char *)dest;
	sr = (const unsigned char *)src;
	
	while (n--)
		*ds++ = *sr++;
	return (ds);
}

void	*bubblesort(void *arr, size_t size, int (*comparator)(void *, void *))
{
	void *tmp;

	if ((tmp = ft_calloc(1, size)) == NULL)
		return (NULL);

	int i;
	int j;
	
	i = 0;
	while (i < (int)(size - 1))
	{
		j = 0;
		while (j < (int)(size - 1))
		{
			if (comparator(ELEM_AT(arr, j, size), ELEM_AT(arr, j+1, size)) > 0)
			{
				ft_memcpy(tmp, ELEM_AT(arr, j, size), size);
				ft_memcpy(ELEM_AT(arr, j, size), ELEM_AT(arr, j + 1, size),
					size);
				ft_memcpy(ELEM_AT(arr, j + 1, size), tmp, size);
			}
			j++;
		}
	i++;
	}
	free(tmp);
	return (arr);
}
