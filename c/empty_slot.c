#include <stdio.h>
#include <string.h>

typedef struct { const char *name; } User;

int main(void) {
    User users[3] = {0};
    users[1] = (User){"bob"};
    users[2] = (User){"carol"};
    printf("%zu\n", strlen(users[0].name));
    return 0;
}
