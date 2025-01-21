#include "../include/include.h"
#include <stdio.h>


void	print_int(void *data)
{
	printf("%d\n", *(int *)data);
}

void	print_pointer(void *data)
{
	printf("%d\n", **(int **)data);
}

void	print_char(void *data)
{
	printf("%c\n", *(char *)data);
}

void	print_string(void *data)
{
	printf("%s\n", *(char **)data);
}
