#include <stdio.h>
#include <stdlib.h>

#define SCRATCH "/tmp/bb_scratch/export.csv"

static int export_rows(const char **rows, int n) {
    FILE *f = fopen(SCRATCH, "w");
    if (!f) return -1;
    fputs("qty\n", f);
    for (int i = 0; i < n; i++) {
        char *end;
        long qty = strtol(rows[i], &end, 10);
        if (end == rows[i] || *end != '\0') { fclose(f); return -1; } // BREAK!
        // CONTROL! if (end == rows[i] || *end != '\0') { fclose(f); remove(SCRATCH); return -1; }
        fprintf(f, "%ld\n", qty);
    }
    fclose(f);
    remove(SCRATCH);
    return 0;
}

int main(void) {
    const char *rows[] = {"3", "x", "5"};
    if (export_rows(rows, 3) != 0) puts("export failed");
    return 0;
}
