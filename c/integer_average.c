#include <stdio.h>

int main(void) {
    int values[] = {3, 4};
    int sum = values[0] + values[1];
    int count = 2;
    double avg = sum / count;
    printf("%.1f\n", avg);
    return 0;
}
