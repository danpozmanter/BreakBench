#include <stdio.h>
#include <stdlib.h>

static const char *find_name(long id) { return id == 1 ? "alice" : NULL; }

int main(int argc, char **argv) {
    (void)argc;
    const char *name = find_name(atol(argv[1]));
    printf("hello, %s\n", name);
    return 0;
}
