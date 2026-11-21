// LEVEL: LANGUAGE

#include <iostream>
#include <utility>

struct Handle {
    int fd;
    explicit Handle(int f) : fd(f) {}
    Handle(const Handle &) = delete;
    Handle &operator=(const Handle &) = delete;
    Handle(Handle &&) = default;
};

int main() {
    Handle h(3);
    Handle copy = h; // REJECT!
    Handle moved = std::move(h);
    std::cout << moved.fd << "\n";
}
