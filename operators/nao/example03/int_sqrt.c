#include <stdio.h> // for printing purposes we won't use no lib here bitchass


// example from C05/ex05/ft_sqrt
int	bin_search_iterative(int l, int h, int x)
{	
	int m;

	while (l <= h)
	{
		m = l + (h - l) / 2;
		
		if (m * m == x)
			return (m);

		if (m * m <  x)
			l = m + 1;

		else
			h = m - 1;
	}
	return (0);
}

int	ft_sqrt_it(int nb)
{
	if (nb < 0)
		return (0);
	return (bin_search_iterative(0, nb, nb));
}

// example from 0yech C05/ex05/ft_sqrt
int	ft_sqrt(int nb)
{
	int	nt;
	int	cx;
	int	ctx;

	cx = 1;
	ctx = 0;
	if (nb == 1)
		return (1);
	while (cx < nb)
	{
		nt = nb / cx;
		ctx = nb % cx;
		if (nt != nb || nt != 1)
		{
			if (ctx == 0 && cx * cx == nb)
				return (cx);
		}
		cx++;
	}
	return (0);
}

// testing results
int	main(void)
{
	printf("%d\n", ft_sqrt(64));
	printf("%d\n", ft_sqrt_it(64));
	return (0);
}
