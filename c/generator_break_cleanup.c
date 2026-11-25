#include <stdio.h>

#define LOCK "/tmp/bb_scratch/reader.lock"

struct rows {
    const char *lines[3];
    int index;
};

static struct rows rows(void) {
    FILE *lock = fopen(LOCK, "w");
    if (lock) fclose(lock);
    return (struct rows){{"alpha", "beta", "gamma"}, 0};
}

static const char *rows_next(struct rows *it) {
    if (it->index < 3) return it->lines[it->index++];
    remove(LOCK);
    return NULL;
}

int main(void) {
    struct rows it = rows();
    for (const char *line; (line = rows_next(&it));) {
        puts(line);
        break; // BREAK!
    }
    return 0;
}
