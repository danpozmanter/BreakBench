#include <stdio.h>
#include <stdlib.h>

struct node {
    struct node *next;
    char payload[2048];
};

struct obj {
    char payload[2048];
    size_t (*callback)(struct obj *self);
};

static size_t payload_len(struct obj *self) {
    return sizeof self->payload;
}

int main(int argc, char **argv) {
    (void)argc;
    long n = atol(argv[1]);
    size_t total = 0;
    for (long i = 0; i < n; i++) {
        struct node *a = calloc(1, sizeof *a);
        struct node *b = calloc(1, sizeof *b);
        a->next = b;
        b->next = a;
        struct obj *o = calloc(1, sizeof *o);
        o->callback = payload_len;
        total += o->callback(o);
        free(a);
        free(b);
        free(o);
    }
    puts(total == 0 ? "unreachable" : "done");
    return 0;
}
