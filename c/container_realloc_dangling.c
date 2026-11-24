#include <stdio.h>
#include <stdlib.h>

typedef struct { int val; } Item;

Item *handles[4];

int main(void) {
    size_t len = 1, cap = 1;
    Item *v = malloc(cap * sizeof(Item));
    char *access_log = malloc(256);
    handles[2] = (Item *)access_log;
    v[0].val = 1;
    handles[0] = &v[0];
    for (int i = 0; i < 1000; i++) {
        if (len == cap) {
            cap *= 2;
            v = realloc(v, cap * sizeof(Item));
            handles[3] = v;
        }
        v[len++].val = i;
    }
    Item *w = malloc(sizeof(Item));
    w[0].val = 7;
    handles[1] = w;
    handles[0]->val = 99; // CONTROL! v[0].val = 99;
    printf("%d\n", handles[1]->val);
    return 0;
}
