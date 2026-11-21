#include <iostream>
#include <memory>

struct Rec { long value; long pad[3]; };

int main() {
    auto a = std::make_unique<Rec>(Rec{1234, {}});
    Rec *b = a.get();
    a.reset();
    auto c = std::make_unique<Rec>(Rec{6666, {}});
    std::cout << b->value << "\n";
}
