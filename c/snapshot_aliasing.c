#include <stdio.h>
#include <stdlib.h>

static void apply_update(int *weights) {
    weights[1] = 5;
    weights[3] = 0;
}

int main(void) {
    int *weights = malloc(4 * sizeof(int));
    for (int i = 0; i < 4; i++) weights[i] = 3;
    int *before = weights; // CONTROL! int before[4]; for (int i = 0; i < 4; i++) before[i] = weights[i];
    apply_update(weights);
    int changes = 0;
    for (int i = 0; i < 4; i++) {
        if (before[i] != weights[i]) changes++;
    }
    printf("%d\n", changes);
    free(weights);
    return 0;
}
