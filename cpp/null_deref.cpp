#include <cstdlib>
#include <iostream>
#include <string>

struct User { std::string name; };

static User alice{"alice"};

static const User *find_user(long id) { return id == 1 ? &alice : nullptr; }

int main(int, char **argv) {
    const User *u = find_user(std::atol(argv[1]));
    std::cout << u->name.size() << "\n"; // BREAK!
    (void)u;
}
