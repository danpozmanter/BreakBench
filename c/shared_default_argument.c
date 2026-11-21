#include <stdio.h>
#include <stdlib.h>

struct cart {
    const char *items[16];
    int count;
};

static struct cart *add_item(const char *item, struct cart *cart) {
    if (!cart) cart = calloc(1, sizeof *cart);
    cart->items[cart->count++] = item;
    return cart;
}

int main(void) {
    free(add_item("x", NULL));
    struct cart *b = add_item("y", NULL);
    printf("%d\n", b->count);
    free(b);
    return 0;
}
