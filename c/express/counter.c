// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L
#include <search.h>
#include <stdint.h>
#include <stdio.h>

int main(void) {
    hcreate(16);
    const char *words[] = {"a", "b", "a"};
    for (int i = 0; i < 3; i++) {
        ENTRY probe = {(char *)words[i], (void *)0};
        ENTRY *e = hsearch(probe, ENTER);
        e->data = (void *)((intptr_t)e->data + 1);
    }
    ENTRY a = {"a", NULL}, b = {"b", NULL};
    printf("a=%ld b=%ld\n", (long)(intptr_t)hsearch(a, FIND)->data, (long)(intptr_t)hsearch(b, FIND)->data);
    hdestroy();
    return 0;
}
