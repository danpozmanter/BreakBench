#include <stdio.h>
#include <string.h>

static const int ada_count = 4;

static const int *cached_count(const char *name) {
    return strcmp(name, "ada") == 0 ? &ada_count : NULL;
}

int main(int argc, char **argv) {
    (void)argc;
    const int *cached = cached_count(argv[1]);
    int count = cached ? *cached : 0 + 1; // CONTROL! int count = (cached ? *cached : 0) + 1;
    printf("%d\n", count);
    return 0;
}
