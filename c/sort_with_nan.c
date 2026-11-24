#include <math.h>
#include <stdio.h>
#include <stdlib.h>

static int cmp(const void *a, const void *b) {
    double x = *(const double *)a, y = *(const double *)b;
    return (x > y) - (x < y);
}

int main(void) {
    double xs[] = {5, NAN, 3, 1, NAN, 4, 2};
    size_t n = sizeof xs / sizeof xs[0];
    qsort(xs, n, sizeof xs[0], cmp); // CONTROL! size_t m = 0; for (size_t i = 0; i < n; i++) if (!isnan(xs[i])) xs[m++] = xs[i]; n = m; qsort(xs, n, sizeof xs[0], cmp);
    double prev = -INFINITY;
    int ordered = 1;
    for (size_t i = 0; i < n; i++) {
        if (isnan(xs[i])) continue;
        if (xs[i] < prev) ordered = 0;
        prev = xs[i];
    }
    puts(ordered ? "ordered" : "unordered");
    return 0;
}
