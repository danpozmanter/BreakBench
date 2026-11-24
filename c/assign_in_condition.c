#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int x = atoi(argv[1]);
    if (x = 1) { // CONTROL! if (x == 1) {
        puts("one");
    } else {
        puts("not one");
    }
    return 0;
}
