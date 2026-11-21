#include <stdio.h>
#include <stdlib.h>

static const char *grade(int score) {
    if (score > 50) return "pass";
    if (score < 50) return "fail";
    // CONTROL! return "borderline";
}

int main(int argc, char **argv) {
    (void)argc;
    puts(grade(atoi(argv[1])));
    return 0;
}
