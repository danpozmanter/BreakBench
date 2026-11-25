#include <stdio.h>
#include <stdlib.h>

static const char *size(int n) {
    const char *label = "small";
    if (n > 5); // CONTROL! if (n > 5)
    {
        label = "big";
    }
    return label;
}

int main(int argc, char **argv) {
    (void)argc;
    puts(size(atoi(argv[1])));
    puts(size(atoi(argv[2])));
    return 0;
}
