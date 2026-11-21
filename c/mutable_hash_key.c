#include <stdio.h>
#include <string.h>

struct set {
    int *items[8];
    size_t count;
};

static int same(const int *a, const int *b) {
    return memcmp(a, b, 2 * sizeof(int)) == 0;
}

static int contains(const struct set *s, const int *key) {
    for (size_t i = 0; i < s->count; i++) {
        if (same(s->items[i], key)) {
            return 1;
        }
    }
    return 0;
}

int main(void) {
    struct set seen = {0};
    int key[2] = {1, 2};
    seen.items[seen.count++] = key;
    key[0] = 9;
    for (size_t i = 0; i < seen.count; i++) {
        puts(contains(&seen, seen.items[i]) ? "found" : "lost");
    }
    return 0;
}
