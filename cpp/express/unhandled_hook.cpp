// LEVEL: STD

#include <cstdlib>
#include <exception>
#include <iostream>
#include <stdexcept>

int main() {
    std::set_terminate([] {
        std::cout << "hook ran" << std::endl;
        std::_Exit(1);
    });
    throw std::runtime_error("boom");
}
