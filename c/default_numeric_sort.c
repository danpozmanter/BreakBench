#include <stdio.h>
#include <stdlib.h>

static int ascending(const void *a, const void *b) {
    int x = *(const int *)a, y = *(const int *)b;
    return (x > y) - (x < y);
}

int main(void) {
    int scores[] = {10, 9, 1};
    qsort(scores, 3, sizeof scores[0], ascending);
    printf("%d %d %d\n", scores[0], scores[1], scores[2]);
    return 0;
}
