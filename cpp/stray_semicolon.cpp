#include <iostream>
#include <string>

static std::string size(int n) {
    std::string label = "small";
    if (n > 5); // CONTROL! if (n > 5)
    {
        label = "big";
    }
    return label;
}

int main(int, char **argv) {
    std::cout << size(std::stoi(argv[1])) << "\n" << size(std::stoi(argv[2])) << "\n";
}
