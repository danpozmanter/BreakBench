// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L
#include <search.h>
#include <stdio.h>
#include <string.h>

static int by_value(const void *a, const void *b) {
    return *(const int *)a - *(const int *)b;
}

static const char *sep = "";

static void show(const void *node, VISIT which, int depth) {
    (void)depth;
    if (which == postorder || which == leaf) {
        printf("%s%d", sep, **(const int *const *)node);
        sep = " ";
    }
}

int main(void) {
    static int items[] = {3, 1, 2};
    void *root = NULL;
    for (int i = 0; i < 3; i++) tsearch(&items[i], &root, by_value);
    twalk(root, show);
    printf("\n");
    return 0;
}
