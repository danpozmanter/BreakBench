#include <iostream>
#include <sstream>
#include <string>
#include <vector>

int parse_order(const std::string &line) {
    std::vector<std::string> parts;
    std::stringstream in(line);
    for (std::string part; std::getline(in, part, ',');) parts.push_back(part);
    return std::stoi(parts[2]); // BREAK!
    // CONTROL! return std::stoi(parts[1]);
}

int main() {
    try {
        std::cout << parse_order("widget,5") << "\n";
    } catch (const std::exception &) {
        std::cout << "invalid order\n";
    }
}
