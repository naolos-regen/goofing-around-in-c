#include <stdio.h>

// #embed feature is not implemented yet?
void	ft_shizosort(void * list)
{	
	int shizomoment[] =
	{ 
		#embed "/dev/urandom" limit(10) 
	};
	int cx;
	list = shizomoment;
}



int	main(void)
{
	int list[] = { 1, 2, 3, 4, 5 };
	ft_shizosort(list);
		
	for (int i = 0 ; i < 4; i++)
	{
		printf("%d", list[i]);
	}

	return (0);
}
