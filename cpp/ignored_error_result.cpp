#include <fstream>
#include <iostream>
#include <string>

static bool save(const std::string &path) {
    std::ofstream f(path);
    if (!f) return false;
    f << "data";
    return true;
}

int main() {
    save("/dev/null/out.txt"); // CONTROL! std::cout << (save("/dev/null/out.txt") ? "saved" : "failed") << "\n";
    std::cout << "saved\n"; // BREAK!
}
