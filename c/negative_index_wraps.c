#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int readings[] = {10, 20, 30};
    int i = atoi(argv[1]);
    printf("%d\n", readings[i] - readings[i - 1]); // CONTROL! if (i > 0) printf("%d\n", readings[i] - readings[i - 1]); else puts("no previous");
    return 0;
}
