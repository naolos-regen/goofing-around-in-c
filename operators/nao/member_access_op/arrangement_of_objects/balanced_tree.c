// self-balancing binary search tree is any nodebased
// binary search tree that automatically keeps its
// height small in the face of arbitrary item insertions or deletions
#include <stdlib.h>

typedef struct s_node
{
	void			*data;
	struct s_node	*left;
	struct s_node	*right;
	int				height;
}					t_node;

t_node	*ft_create_node(void *data)
{
	t_node	*node;

	node = (t_node *)malloc(sizeof(t_node));
	node->data = data;
	node->left = NULL;
	node->right = NULL;
	node->height = 1;
	return (node);
}

int	max(int a, int b)
{
	return ((a > b) ? a : b);
}

int	height(t_node *n)
{
	if (n == NULL)
		return (0);
	return (n->height);
}

t_node	*ft_rotate_right(t_node *y)
{
	t_node	*x;
	t_node	*t;

	x = y->left;
	t = x->right;
	x->right = y;
	y->left = t;
	y->height = max(height(y->left), height(y->right)) + 1;
	x->height = max(height(x->left), height(x->right)) + 1;
	return (x);
}

t_node	*ft_rotate_left(t_node *x)
{
	t_node	*y;
	t_node	*t;

	y = x->right;
	t = y->left;
	y->left = x;
	x->right = t;
	x->height = max(height(y->left), height(x->right)) + 1;
	y->height = max(height(x->left), height(y->right)) + 1;
	return (y);
}

int	ft_balance(t_node *n)
{
	if (n == NULL)
		return (0);
	return (height(n->left) - height(n->right));
}

t_node	*eval(t_node *n, void *data)
{
	return (n);
}

t_node	*insert(t_node *n, void *data)
{
	int	bal;

	if (n == NULL)
		return (ft_create_node(data));
	if ((char *)data < (char *)n->data)
		n->left = insert(n->left, data);
	else
		n->right = insert(n->right, data);
	n->height = max(height(n->left), height(n->right)) + 1;
	bal = ft_balance(n);
	if (bal > 1 && (char *)data < (char *)n->left->data)
		return (ft_rotate_right(n));
	if (bal < -1 && (char *)data > (char *)n->right->data)
		return (ft_rotate_left(n));
	if (bal > 1 && (char *)data > (char *)n->left->data)
	{
		n->left = ft_rotate_left(n->right);
		return (ft_rotate_right(n));
	}
	if (bal < -1 && (char *)data > (char *)n->right->data)
	{
		n->right = ft_rotate_right(n->right);
		return (ft_rotate_left(n));
	}
	return (n);
}
