#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int x = atoi(argv[1]);
    int even = x & 1 == 0; // BREAK!
    // CONTROL! int even = (x & 1) == 0;
    puts(even ? "even" : "odd");
    return 0;
}
