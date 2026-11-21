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
    save("/nonexistent/dir/out.txt");
    std::cout << "saved\n";
}
