#include <stdio.h>

static int write_report(void) {
    return -1;
}

static void close_log(void) {}

static int save_report(void) {
    int rc = write_report();
    close_log();
    return rc;
}

int main(void) {
    puts(save_report() == 0 ? "saved" : "failed");
    return 0;
}
