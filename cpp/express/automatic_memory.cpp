// LEVEL: STD

#include <array>
#include <iostream>
#include <memory>

struct Rec {
    long id;
    std::array<char, 1016> data;
};

int main() {
    std::unique_ptr<Rec> last;
    for (long i = 0; i < 4000000; i++) {
        last = std::make_unique<Rec>(Rec{i, {}});
    }
    std::cout << last->id << "\n";
}
