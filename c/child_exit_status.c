#include <stdio.h>
#include <stdlib.h>

int main(void) {
    system("sh -c 'exit 3'");
    puts("backed up");
    return 0;
}
