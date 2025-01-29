#include <stdio.h>
#include <signal.h>

int	main(void)
{
	char s[1024];

	signal(SIGINT, SIG_IGN);

	printf("try hitting C-c (Hit RETURN to exit)\n");

	fgets(s, sizeof s, stdin);
}
