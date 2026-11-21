#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int a = atoi(argv[1]) != 0;
    int b = 1;
    const char *r = "unset";
    if (a)
        if (b) r = "both";
    else
        r = "not a";
    puts(r);
    return 0;
}
