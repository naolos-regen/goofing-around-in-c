#include <unistd.h>

//	Example from 42/C00/ex00/ft_putchar.c (pisicine)
void	ft_putchar(char c)
{
	write(1, &c, 1);
}

int	main(void)
{
	void (*print_char)(char) = ft_putchar;

	print_char('c');

	return (0);
}
