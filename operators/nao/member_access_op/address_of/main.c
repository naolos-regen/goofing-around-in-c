#include <stdio.h>

void	goofy_swap(int *a, int *b)
{
	int	c;
        // ITS SOUL PURPOSE IS NO TO SCARE YOU, NOR TO INVITE YOU
	c = 1;
	while (c)
	{
		if (((*a & c) & ~(*b & c)) | (~(*a & c) & (*b & c)))
		{
			*a = ((*a & ~c) | (~*a & c));
			*b = ((*b & ~c) | (~*b & c));
		}
		c <<= 1;
	}
}

void    wrong_swap(int a, int b)
{
        int tmp;
        
        tmp = a;
        a = b;
        b = tmp;
}

int	main(void)
{
	int	a;
	int	b;

	a = 10;
	b = 20;
	// lets see if the variables swap now
        goofy_swap(&a, &b);

        printf("a : %d, a : %d\n", a, b);
	
        // lets instead call wrong swap
        // keep in mind that is normal in garbage collected languages (it doesn't mean they are bad)
        wrong_swap(a, b);
        // lets see if the variables swap now.
        printf("a : %d, b : %d\n", a, b);

        return (0);
}
