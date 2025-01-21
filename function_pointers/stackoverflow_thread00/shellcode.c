#include <stdio.h>
#include <string.h>

char code[] =
    "\xeb\x1e"                // jmp short <MESSAGE>
    "\xb8\x01\x00\x00\x00"    // mov $0x1,%eax
    "\xbf\x01\x00\x00\x00"    // mov $0x1,%edi
    "\x48\x8d\x35\xe3\xff\xff\xff" // lea rsi,[rip-0x1d] (message)
    "\xba\x0f\x00\x00\x00"    // mov $0xf,%edx
    "\x0f\x05"                // syscall
    "\xb8\x3c\x00\x00\x00"    // mov $0x3c,%eax (exit syscall)
    "\xbf\x00\x00\x00\x00"    // mov $0x0,%edi
    "\x0f\x05"                // syscall
    "\xe8\xdd\xff\xff\xff"    // call <GOBACK>
    "Hello world!\n";

int main(int argc, char **argv)
{
    (*(void(*)())code)();
    return 0;
}
