#include <stdio.h>

struct P { int x; int y; };

int main(void) {
    struct P a = {1, 2};
    struct P b = {1, 2};
    puts(a == b ? "equal" : "different"); // CONTROL! puts(a.x == b.x && a.y == b.y ? "equal" : "different");
    return 0;
}
