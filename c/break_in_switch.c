#include <stdio.h>
#include <stdlib.h>

static int total_until_stop(int count, char **codes) {
    int total = 0;
    for (int i = 0; i < count; i++) {
        int code = atoi(codes[i]);
        switch (code) {
        case 0:
            break; // CONTROL! return total;
        default:
            total += code;
            break;
        }
    }
    return total;
}

int main(int argc, char **argv) {
    printf("%d\n", total_until_stop(argc - 1, argv + 1));
    return 0;
}
