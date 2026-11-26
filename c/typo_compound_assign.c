#include <stdio.h>

int main(void) {
    int total = 10;
    total =+ 5; // CONTROL! total += 5;
    printf("%d\n", total);
    return 0;
}
