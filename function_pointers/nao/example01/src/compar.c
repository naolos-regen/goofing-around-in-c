#include "../include/include.h"

int	int_compar(void *c1, void *c2)
{
	return (*(int *)c1) - (*(int *)c2);
}

int	char_compar(void *c1, void *c2)
{
	return (*(char *)c1) - (*(char *)c2);
}

int	string_compar(void *c1, void *c2)
{
	return (*(char **)c1) - (*(char **)c2);
}
