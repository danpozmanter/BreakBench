#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

static bool contains(const int *xs, size_t n, int v) {
    for (size_t i = 0; i < n; i++) {
        if (xs[i] == v) return true;
    }
    return false;
}

int main(int argc, char **argv) {
    (void)argc;
    const int ids[] = {10, 20, 30};
    const char *id = argv[1];
    puts(contains(ids, 3, id) ? "found" : "missing"); // CONTROL! puts(contains(ids, 3, atoi(id)) ? "found" : "missing");
    return 0;
}
