#include <stdio.h>
#include <string.h>
#include <sys/stat.h>

int main(void) {
    mkdir("/tmp/bb_files", 0755);
    FILE *seed = fopen("/tmp/bb_files/report.txt", "w");
    if (seed == NULL) return 1;
    fputs("secret\n", seed);
    fclose(seed);

    static const char name[] = "report.txt\0.png";
    size_t length = sizeof name - 1;
    // CONTROL! if (strlen(name) != length) { puts("rejected"); return 0; }
    if (length < 4 || memcmp(name + length - 4, ".png", 4) != 0) {
        puts("rejected");
        return 0;
    }
    char path[256];
    snprintf(path, sizeof path, "/tmp/bb_files/%s", name);
    FILE *image = fopen(path, "r");
    if (image == NULL) {
        puts("rejected");
        return 0;
    }
    char line[64];
    if (fgets(line, sizeof line, image) != NULL) fputs(line, stdout);
    fclose(image);
    return 0;
}
