#include <stdio.h>
#include <string.h>

struct item {
    const char *name;
    int count;
};

static struct item stock[] = {{"apple", 3}, {"plum", 4}};

static struct item *find(const char *name) {
    for (size_t i = 0; i < sizeof stock / sizeof stock[0]; i++) {
        if (strcmp(stock[i].name, name) == 0) {
            return &stock[i];
        }
    }
    return NULL;
}

int main(int argc, char **argv) {
    (void)argc;
    printf("%d\n", find(argv[1])->count + 5); // CONTROL! struct item *it = find(argv[1]); if (it) printf("%d\n", it->count + 5); else puts("unknown");
    return 0;
}
