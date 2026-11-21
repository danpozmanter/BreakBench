#include <iostream>
#include <string>

constexpr std::size_t HEADER = 5;

int main(int, char **argv) {
    std::string message = argv[1];
    auto payload = message.size() - HEADER;
    if (payload < 0) {
        std::cout << "short\n";
    } else {
        std::cout << payload << "\n";
    }
}
