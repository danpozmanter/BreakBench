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
    printf("%d\n", find(2)->age + 1); // CONTROL! const struct User *u = find(2); if (u) printf("%d\n", u->age + 1); else puts("missing");
    return 0;
}
