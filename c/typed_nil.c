#include <stdio.h>

struct error {
    const char *message;
};

struct validation_error {
    struct error base;
    const char *field;
};

static struct validation_error missing_name = {{"invalid name"}, "name"};

static struct error *validate(const char *name) {
    struct validation_error *problem = NULL;
    if (name[0] == '\0') {
        problem = &missing_name;
    }
    return (struct error *)problem;
}

int main(void) {
    puts(validate("ada") != NULL ? "invalid" : "valid");
    return 0;
}
