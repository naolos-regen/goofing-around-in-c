#include <stdio.h>

struct { int value; int secret; }
oho (int val)
{
	return (typeof(oho(0))){ .value = val, .secret = 100 };
}

int main(void)
{
	printf("Goofy\n");
	
	__typeof__(oho(0)) annon_struct = oho(42);

	int *ptr = (int *)&annon_struct;

	printf("struct value: %d\n", *ptr);
	printf("struct secret: %d\n", *(ptr+1));
	
	return (0);
}
