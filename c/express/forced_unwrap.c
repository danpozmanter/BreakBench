// LEVEL: LANGUAGE

#include <stdio.h>
#include <stddef.h>

struct User { int age; };

static const struct User *find(int id) {
    static const struct User ada = {36};
    return id == 1 ? &ada : NULL;
}

int main(void) {
    puts("before");
    fflush(stdout);
    printf("%d\n", find(2)->age + 1);
    return 0;
}
