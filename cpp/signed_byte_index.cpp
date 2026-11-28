#include <array>
#include <iostream>
#include <string>

int main(int argc, char **argv) {
    (void)argc;
    std::string text = argv[1];
    std::array<int, 256> counts{};
    for (char c : text) counts[c]++; // CONTROL! for (char c : text) counts[static_cast<unsigned char>(c)]++;
    int high = 0;
    for (int b = 128; b < 256; b++) high += counts[b];
    std::cout << high << "\n";
}
