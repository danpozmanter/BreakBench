#include <iostream>
#include <string>

int main(int, char **argv) {
    std::string status = "pending";
    if (std::string(argv[1]) == "ok") {
        std::string status = "done"; // CONTROL! status = "done";
        std::cerr << "status: " << status << "\n";
    }
    std::cout << status << "\n";
}
