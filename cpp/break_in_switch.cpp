#include <iostream>
#include <string>
#include <vector>

static int total_until_stop(const std::vector<int> &codes) {
    int total = 0;
    for (int code : codes) {
        switch (code) {
        case 0:
            break; // CONTROL! return total;
        default:
            total += code;
            break;
        }
    }
    return total;
}

int main(int argc, char **argv) {
    std::vector<int> codes;
    for (int i = 1; i < argc; i++) {
        codes.push_back(std::stoi(argv[i]));
    }
    std::cout << total_until_stop(codes) << "\n";
}
