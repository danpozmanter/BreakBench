// LEVEL: STD

#include <iostream>
#include <memory>

int main() {
    auto strong = std::make_shared<int>(1);
    std::weak_ptr<int> weak = strong;
    strong.reset();
    std::cout << (weak.expired() ? "gone" : "alive") << "\n";
}
