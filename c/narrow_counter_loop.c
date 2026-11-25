#include <stdint.h>
#include <stdio.h>

int main(void) {
    int passes = 0;
    uint8_t i = 0; // BREAK!
    // CONTROL! uint16_t i = 0;
    while (i < 300) {
        passes++;
        i++;
    }
    printf("%d\n", passes);
    return 0;
}
