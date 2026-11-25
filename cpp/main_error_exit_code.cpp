#include <fstream>
#include <iostream>
#include <string>

int main() {
    std::ifstream config("/nonexistent/bb.conf");
    if (!config) {
        std::cerr << "config missing\n";
        return; // BREAK!
        // CONTROL! return 1;
    }
    std::string line;
    std::getline(config, line);
    std::cout << line.size() << "\n";
}
