#include <stdio.h>
#include <stdlib.h>

int main(void) {
    system("sh -c 'exit 3'"); // CONTROL! if (system("sh -c 'exit 3'") != 0) { puts("backup failed"); return 0; }
    puts("backed up");
    return 0;
}
