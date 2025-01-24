for instance we want to safely swap 2 integer variables with eatch-other without using any temporary new data
that would go like this
```c
void ft_swap(int *a, int *b)
{
    *a ^= *b;
    *b ^= *a;
    *a ^= *b;
}
void funky_swap(int *a, int *b)
{
    a ^= b ^= a ^= b;
}
```
or if you want to make it bit safe (electrical change of bits per say)
```c
void ft_swap(int *a, int *b)
{
    int c;

    c = 1;
    while (c)
    {
        if ((*a & c) != (*b & c))
        {
            *a ^= c;
            *b ^= c;
        }
        c <<= 1;
    }
}
```
IF THAT CONDITION:.
$$((A \land C) \land \neg (B \land C)) \lor (\neg (A \land C) \land (B \land C))$$
is true than.
$$A = (A \land \neg C) \lor (\neg A \land C)$$
$$B = (B \land \neg C) \lor (\neg B \land C)$$
that would mean if this works, so does the code.

```c
void	ft_swap(int *a, int *b)
{
	int	c;

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
```
and more generic would be
```c
void swap(void *vx, void *vy, size_t s)
{
    char t; 

    *a = (char*)vx, 
    *b = (char*)vy;
    while(s--)
    {
	t = a[s] 
	a[s] = b[s] 
	b[s] = t;
    }
}
```
or create a macro which would look like that
```c
#define SWAP(x, y) do{ __typeof__ (x) _T = x; x = y; y = _T; } while (0)
```

Lua, Python, Julia, Ruby, Crystal, Elixir, F#, Frink, Go, Haskell, Perl...
```julia
x = 10
y = 20

x, y = y, x
```
the idea in these languages is to create a Temporary collection of mathematical objects and swap them around.
Assembly does that: 
```asm
_tmp_swap :
	MOV   eax , [rdi]
	XCHG  eax , [rsi]   ; XCHG Exchanges the contents of the destination (first) and source (second) operands. 
			    ; The operands can be two general-purpose registers or a register and a memory location
			    ; If a memory operand is referenced, the processor's locking protocol is automatically 
			    ; implemented for the duration of the exchange operation
			    ; ... https://c9x.me/x86/html/file_module_x86_id_328.html
	MOV  [rdi],  eax
	ret

_xor_swap:
	XOR  [rdi], [rsi]
	XOR  [rsi], [rdi]
	XOR  [rdi], [rsi]
	ret
```	
I'm working without compiler and runner on this, so it might be wrong
