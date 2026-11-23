#include <cstdio>
#include <iostream>
#include <string>

int main() {
    FILE* child = popen("printf HELLO-WO; sleep 0.2; printf RLD-1234", "r");
    if (child == nullptr) return 1;
    std::string message(16, '\0');
    std::fread(message.data(), 1, message.size(), child);
    pclose(child);
    std::cout << message << "\n";
}
