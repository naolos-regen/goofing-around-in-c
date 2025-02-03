#include <stdlib.h>
#include <string.h>

void	ft_memcpy(void *dest, void *src, size_t n)
{
	int i;
	char *c_src = (char *)src;
	char *c_dst = (char *)dest;
	
	i = 0;
	while (i++ < n)
		c_dst[i] = c_src[i];
}

void	ft_memmove(void *dest, void *src, size_t n)
{
	return (ft_memcpy(dest, src, n));
}

void	ft_insertionsort(void *a, int n, size_t s, int (*comparator)(void *,
			void *))
{
	char	*tmp;
	char	*i;
	char	*j;

	tmp = malloc(s);
	i = (char *)a + s;
	for (; --n; i += s)
	{
		memcpy(tmp, i, s);
		for (j = i - s; j - (char *)a >= 0 && comparator(tmp, j); j -= s)
			memmove(j + s, j, s);
		memcpy(j + s, tmp, s);
	}
	free(tmp);
}
