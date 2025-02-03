// Q←{1≥≢⍵:⍵ ⋄ S←{⍺⌿⍨⍺ ⍺⍺ ⍵} ⋄ ⍵((∇<S)⍪=S⍪(∇>S))⍵⌷⍨?≢⍵}

void ft_swap(void **a, int l, int r)
{
	void *tmp;

	tmp  = a[l];
	a[l] = a[r];
	a[r] = tmp;
}
// your mission is to create a comparator funtion that is taken as a parameter it takes 2 void * 
// params compares them and gives an integer back 
// depending on creation you can make desc_comp or asc_comp
void ft_quicksort(void *a[], int l, int r, int (*comparator)(void *, void *))
{
	int cx;
	int ln;

	if (l >= r)
		return ;
	ft_swap(a, l, (l+r)/2);
	ln = l;
	cx = l + 1;
	while(cx <= r)
	{
		if ((*comparator)(a[cx], a[l]) < 0)
			ft_swap(a, ++ln, cx);
		cx++;
	}
	ft_swap(a, l, ln);
	ft_quicksort(a, l, ln-1, comparator);
	ft_quicksort(a, ln+1, r, comparator);
}


