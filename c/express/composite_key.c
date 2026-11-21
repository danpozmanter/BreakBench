// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L
#include <search.h>
#include <stdio.h>
#include <string.h>

struct pair { int a, b; };

static int by_pair(const void *x, const void *y) {
    const struct pair *p = x, *q = y;
    return p->a != q->a ? p->a - q->a : p->b - q->b;
}

int main(void) {
    static struct pair stored = {1, 2};
    void *root = NULL;
    tsearch(&stored, &root, by_pair);
    struct pair probe = {1, 2};
    puts(tfind(&probe, &root, by_pair) != NULL ? "true" : "false");
    return 0;
}
