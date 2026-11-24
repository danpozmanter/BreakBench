#include <stdio.h>
#include <string.h>

typedef struct {
    enum { INT, TEXT } tag;
    union { long i; const char *text; } as;
} Value;

int main(void) {
    Value v = {INT, {.i = 42}};
    printf("%zu\n", strlen(v.as.text)); // CONTROL! if (v.tag == TEXT) printf("%zu\n", strlen(v.as.text)); else puts("not text");
    return 0;
}
