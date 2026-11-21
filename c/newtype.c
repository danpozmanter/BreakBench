#include <stdio.h>

typedef struct { double v; } Meters;
typedef struct { double v; } Seconds;

static Meters add(Meters a, Meters b) { return (Meters){a.v + b.v}; }

int main(void) {
    Meters total = add((Meters){2}, (Meters){3});
    Meters wrong = add((Meters){2}, (Seconds){3}); // BREAK!
    printf("%g\n", total.v);
    return 0;
}
