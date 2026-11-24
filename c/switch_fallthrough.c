#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int n = atoi(argv[1]);
    const char *name;
    switch (n) {
    case 1:
        name = "one";
        // CONTROL! break;
    case 2:
        name = "two";
        break;
    default:
        name = "other";
    }
    puts(name);
    return 0;
}
