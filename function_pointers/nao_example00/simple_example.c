#include <unistd.h>

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
