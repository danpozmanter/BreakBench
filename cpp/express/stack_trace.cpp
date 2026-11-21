// LEVEL: STD

#include <iostream>
#include <stacktrace>
#include <string>

[[gnu::noinline]] std::string inner() { return std::to_string(std::stacktrace::current()); }

int main() {
    std::cout << (inner().find("inner") != std::string::npos ? "inner" : "missing") << "\n";
}
