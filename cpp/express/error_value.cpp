// LEVEL: STD

#include <expected>
#include <iostream>
#include <string>

enum class ParseError { NotANumber };

std::expected<int, ParseError> parse_port(const std::string &s) {
    try { return std::stoi(s); } catch (...) { return std::unexpected(ParseError::NotANumber); }
}

int main() {
    auto r = parse_port("x");
    if (r) std::cout << *r << "\n"; else std::cout << "error\n";
}
