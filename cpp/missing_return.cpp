#include <iostream>
#include <string>

static std::string grade(int score) {
    if (score > 50) return "pass";
    if (score < 50) return "fail";
    // CONTROL! return "borderline";
}

int main(int, char **argv) {
    std::cout << grade(std::stoi(argv[1])) << "\n";
}
