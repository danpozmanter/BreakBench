#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int x = atoi(argv[1]);
    int inside = 1 < x < 3; // BREAK!
    // CONTROL! int inside = 1 < x && x < 3;
    puts(inside ? "inside" : "outside");
    return 0;
}
