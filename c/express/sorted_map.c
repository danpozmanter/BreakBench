// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L
#include <search.h>
#include <stdio.h>
#include <string.h>

struct item { const char *key; int value; };

static int by_key(const void *a, const void *b) {
    return strcmp(((const struct item *)a)->key, ((const struct item *)b)->key);
}

static const char *sep = "";

static void show(const void *node, VISIT which, int depth) {
    (void)depth;
    if (which == postorder || which == leaf) {
        printf("%s%s", sep, (*(const struct item *const *)node)->key);
        sep = " ";
    }
}

int main(void) {
    static struct item items[] = {{"c", 1}, {"a", 2}, {"b", 3}};
    void *root = NULL;
    for (int i = 0; i < 3; i++) tsearch(&items[i], &root, by_key);
    twalk(root, show);
    printf("\n");
    return 0;
}
