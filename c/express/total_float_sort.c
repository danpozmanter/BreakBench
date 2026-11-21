// LEVEL: STD

#define __STDC_WANT_IEC_60559_EXT__ 1
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

static int by_total(const void *a, const void *b) {
    double x = *(const double *)a, y = *(const double *)b;
    return totalorder(&x, &y) ? (totalorder(&y, &x) ? 0 : -1) : 1;
}

int main(void) {
    double xs[] = {3, NAN, 1, 2};
    qsort(xs, 4, sizeof xs[0], by_total);
    for (int i = 0; i < 4; i++) {
        if (isnan(xs[i])) printf("%sNaN", i ? " " : "");
        else printf("%s%g", i ? " " : "", xs[i]);
    }
    printf("\n");
    return 0;
}
