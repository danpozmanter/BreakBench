#include <stdio.h>

int main(void) {
    int grid[3][3] = {0};
    grid[0][0] = 1;
    int ones = 0;
    for (int r = 0; r < 3; r++)
        for (int c = 0; c < 3; c++)
            if (grid[r][c] == 1) ones++;
    printf("%d\n", ones);
    return 0;
}
