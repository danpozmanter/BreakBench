#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    (void)argc;
    const char *base = "/srv/app/uploads";
    char joined[512];
    snprintf(joined, sizeof joined, "%s/%s", base, argv[1]);
    puts(strncmp(joined, "/srv/app/uploads/", 17) == 0 ? "inside" : "escaped");
    return 0;
}
