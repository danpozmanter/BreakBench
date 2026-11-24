#include <filesystem>
#include <fstream>
#include <iostream>
#include <string>

int main() {
    std::filesystem::create_directories("/tmp/bb_files");
    std::ofstream("/tmp/bb_files/report.txt") << "secret\n";

    const std::string name("report.txt\0.png", 15);
    // CONTROL! if (name.find('\0') != std::string::npos) { std::cout << "rejected\n"; return 0; }
    if (!name.ends_with(".png")) {
        std::cout << "rejected\n";
        return 0;
    }
    std::ifstream image("/tmp/bb_files/" + name);
    if (!image) {
        std::cout << "rejected\n";
        return 0;
    }
    std::string line;
    std::getline(image, line);
    std::cout << line << "\n";
}
