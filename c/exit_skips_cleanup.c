#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define LOCK "/tmp/bb_scratch/run.lock"

static bool check_args(int argc, char **argv) {
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--version") == 0) {
            puts("1.0");
            exit(0); // BREAK!
            // CONTROL! return true;
        }
    }
    return false;
}

int main(int argc, char **argv) {
    FILE *lock = fopen(LOCK, "w");
    if (lock) fclose(lock);
    // C has no scope-exit cleanup, so main removes the lock before it returns.
    if (!check_args(argc, argv)) puts("working");
    remove(LOCK);
    return 0;
}
