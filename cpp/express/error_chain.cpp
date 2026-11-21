// LEVEL: STD

#include <exception>
#include <iostream>
#include <stdexcept>

int main() {
    try {
        try {
            throw std::runtime_error("not found");
        } catch (...) {
            std::throw_with_nested(std::runtime_error("loading config"));
        }
    } catch (const std::exception &e) {
        std::cout << e.what() << ": ";
        try {
            std::rethrow_if_nested(e);
        } catch (const std::exception &cause) {
            std::cout << cause.what() << "\n" << cause.what() << "\n";
        }
    }
}
