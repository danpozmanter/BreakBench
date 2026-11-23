#include <stdio.h>

static int report_write(const char **error) {
    *error = "disk full";
    return -1;
}

static int report_close(const char **error) {
    *error = "close failed";
    return -1;
}

static int save(const char **error) {
    int status = report_write(error);
    const char *close_error = NULL;
    if (report_close(&close_error) != 0 && status == 0) {
        *error = close_error;
        status = -1;
    }
    return status;
}

int main(void) {
    const char *error = NULL;
    if (save(&error) != 0) puts(error);
    return 0;
}
