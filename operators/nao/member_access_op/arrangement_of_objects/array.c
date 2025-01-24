#include <stdio.h>

int main(void)
{
    // lets say we use 10 as terminator in this case (we only know 10 is our terminator) 
    int x[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    // 0x1000 - begin of an array in address
    // 0x1009 - End of an array in address
    // getting the number 1 is equal to dereferencing the address 0x1000
    // getting the number 2 is equal to dereferencing the address 0x1001
    // getting the number 3 is equal to dereferencing the address 0x1002
    // .
    // .
    // .
    // getting the number 10 is equal to dereferencing the address 0x1009
    // so that should mean that if we got the address
    int *y;

    y = x;
    printf("%p\n", y); // we get the same result
    printf("%p\n", x); // we get the same result 
    // and now we can iterate the pointer address (maybe knowing how big it is in the first place)
    
    int i;

    i = 0;
    while(y[i] != 10)
    {
        printf("the array holds array  variant : %d\n", *y);
        y++;
    }
    //  which also could be created like so
    y = x;  // Now of couse we are setting the address back, because as you may saw the while loop upwards adds the pointer up
            // not the index.
    while(*y != 10)
    {   
        printf("the array holds pointer variant : %d\n", *y);
        y++;
    }
    // which could also be created like so
    y = x;
    i = 0;
    while(y[i] != 10) // or just i != 10 xd
    {
        printf("The actual array variant : %d\n", y[i]);
        i++;
    }


    return (0);
}
