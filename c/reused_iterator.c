#include <stdio.h>

int main(void) {
    int xs[] = {1, 2, 3, 4, 5, 6};
    int evens[6];
    int n = 0;
    for (int i = 0; i < 6; i++)
        if (xs[i] % 2 == 0) evens[n++] = xs[i];
    int total = 0;
    for (int i = 0; i < n; i++) total += evens[i];
    printf("%d %d\n", total, n);
    return 0;
}
