// LEVEL: LANGUAGE

#include <iostream>

static const char *grade(int score) {
    return score > 50 ? "pass" : "fail";
}

static const char *bad(int score) { // REJECT!
    if (score > 50) return "pass"; // REJECT!
} // REJECT!

int main() {
    std::cout << grade(60) << "\n";
}
