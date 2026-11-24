#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct { const char *name; } User;

static User alice = {"alice"};

static User *find_user(long id) { return id == 1 ? &alice : NULL; }

int main(int argc, char **argv) {
    (void)argc;
    User *u = find_user(atol(argv[1]));
    printf("%zu\n", strlen(u->name)); // CONTROL! if (u) printf("%zu\n", strlen(u->name)); else puts("missing");
    (void)u;
    return 0;
}
