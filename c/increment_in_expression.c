#include <stdio.h>

int main(void) {
    int i = 0;
    i = i++; // CONTROL! i++;
    printf("%d\n", i);
    return 0;
}
