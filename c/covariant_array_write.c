#include <stdio.h>

typedef struct { const char *(*sound)(void); } Animal;
typedef struct { Animal base; } Dog;
typedef struct { Animal base; } Cat;

static const char *woof(void) { return "woof"; }
static const char *meow(void) { return "meow"; }

int main(void) {
    Dog dogs[1] = {{{woof}}};
    Animal *animals = (Animal *)dogs;
    Cat cat = {{meow}};
    animals[0] = cat.base; // BREAK!
    puts(dogs[0].base.sound());
    return 0;
}
