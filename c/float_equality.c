#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    double x = strtod(argv[1], NULL);
    double y = strtod(argv[2], NULL);
    double a = x + y;
    puts(a == 0.3 ? "equal" : "not equal"); // CONTROL! puts(a - 0.3 < 1e-9 && 0.3 - a < 1e-9 ? "equal" : "not equal");
    return 0;
}
