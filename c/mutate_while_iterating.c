#include <stdio.h>
#include <string.h>

int main(void) {
    int xs[] = {1, 2, 2, 3};
    int len = 4;
    for (int i = 0; i < len; i++) {
        if (xs[i] == 2) {
            memmove(&xs[i], &xs[i + 1], (size_t)(len - i - 1) * sizeof(int));
            len--;
        }
    }
    for (int i = 0; i < len; i++) printf(i ? ",%d" : "%d", xs[i]);
    printf("\n");
    return 0;
}
