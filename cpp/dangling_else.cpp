#include <iostream>
#include <string>

int main(int, char **argv) {
    bool a = std::stoi(argv[1]) != 0;
    bool b = true;
    std::string r = "unset";
    if (a) // CONTROL! if (a) {
        if (b) r = "both";
    else // CONTROL! } else
        r = "not a";
    std::cout << r << "\n";
}
