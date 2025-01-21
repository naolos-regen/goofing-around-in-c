# Function Pointers

## 5.11 Pointers to Functions 

In C, a function itself is not a variable, but it is possible to define pointers to functions, which can be assigned, placed in arrays, passed to functions, returned by functions and so on.

Illustration by sorting

Lexographic comparison of two lines is done by strcmp, as before; we will also need a routine numcmp that compares two lines on the basis of numeric value and return the same kind of condition indication as strcmp does. These functions are decleared ahead of main and a pointer to the appropriate one is passed to qsort. We have skimped on error processing for arguments, so as to concentrate on the main issues.

```c
#include <stdio.h>
#include <string.h>

#define MAXLINES 5000
char    *lineptr[MAXLINES];

int     readlines (char *lineptr[], int nlines);
void    writelines(char *lineptr[], ine nlines);

void    qsort     (void *lineptr[], int left, int right, int (*comp)(void *, void *));

int     main      (int argc, int *argv[])
{
    int nlines;
    int numeric = 0;

    if (argc > 1 && strcmp(argv[1], "-n") == 0)
        numeric = 1;
    if ((nlines = readlines(lineptr, MAXLINES)) >= 0)
    {
        qsort((void**) lineptr, 0, nlines-1, (int (*)(void *, void*)) (numeric ? numcmp : strcmp));
        writelines(lineptr, nlines);
        return (0);
    }
    else
    {
        printf("input too big to sort\n");
        return (1);
    }
}
```

## 23.7 Pointers to Functions Beej Guide to C

"Functions are just collections of machine instructions in memory, so there's no reason we can't get a pointer to the first instruction of the function. This can be useful for passing a pointer to a function into another function as an argument. Then the second one could call whatever was passed in."

examples
```c
// declare p to be a pointer to a function.
// That function returns a float, ant takes two ints as arguments

float (*p)(int, int);
// param names can be ignored
```

```c
#include <stdio.h>

void    print_int(int n)
{
    printf("%d\n", n);
}

int     main(void)
{
    void (*p)(int) = print_int; // assign p to point to the print_int function

    p(3490);    // calls print_int via the pointer

    return (0);
}
```

```c
#include <stdio.h>

int      add (int a, int b) { return a + b; }
int      mul (int a, int b) { return a * b; }

void    print_math(int (*op)(int, int), int x, int y)
{
    int res = op(x, y);

    printf("%d\n", res);
}

int     main(void)
{
    print_math(add, 5, 7);  // 12
    print_math(mul, 5, 7);  // 35
}
```

How it works? 
When a program is compiled, each function is assigned a memory address in the binary. A function pointer is a variable that can store the memory address of a function, allowing the program to call that function indirectly through the pointer.

It is used (according to my knowledge) for scenarios where you pass a function as a parameter.

see all examples.
