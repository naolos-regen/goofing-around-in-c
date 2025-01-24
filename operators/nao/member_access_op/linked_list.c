#include <stdio.h>
#include <stdlib.h>

typedef struct s_list
{
	struct s_list	*next;
	void			*data;
}					t_list;

t_list	*ft_create_elem(void *data)
{
	t_list	*item;

	item = malloc(sizeof(t_list));
	item->next = NULL;
	item->data = data;
	return (item);
}

void	ft_list_push_front(t_list **begin_list, void *data)
{
	t_list	*new_front;

	new_front = ft_create_elem(data);
	new_front->next = *begin_list;
	*begin_list = new_front;
}

int	ft_list_size(t_list *begin_list)
{
	int	cx;

	cx = 0;
	while (begin_list)
	{
		cx++;
		begin_list = begin_list->next;
	}
	return (cx);
}

void	ft_list_clear(t_list *begin_list, void (*free_fct)(void *))
{
	t_list	*tmp;

	while (begin_list)
	{
		free_fct(begin_list->data);
		tmp = begin_list->next;
		free(begin_list);
		begin_list = tmp;
	}
}

void	free_fct(void *data)
{
	free((char *)data);
}

void	do_nothing(void *data)
{
	(void)data;
}

void	ft_strcpy(char *dest, char *src)
{
	while ((*dest++ = *src++) != '\0')
		;
}

void	print_a_list_str(t_list *list)
{
	for (; list != 0; list = list->next)
		printf("%s,", (char *)list->data);
	printf("\n");
}

int	main(void)
{
	t_list	*list;
	char	*data;

	data = malloc(6 * sizeof(char));
	if (!data)
		return (1);
	ft_strcpy(data, "AHAHA");
	list = ft_create_elem(data);
	ft_list_push_front(&list, "asdf");
	ft_list_push_front(&list, "zxcv");
	ft_list_push_front(&list, "hjkl");
	print_a_list_str(list);
	printf("size: %d\n", ft_list_size(list));
	ft_list_clear(list, &do_nothing);
	return (0);
}
