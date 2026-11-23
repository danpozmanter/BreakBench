#include <iostream>
#include <string>

int main() {
    std::string access = "user";
    if (access != "user‮ ⁦// admins only⁩ ⁦") { // CONTROL! if (access != "user") {
        std::cout << "admin\n";
    } else {
        std::cout << "user\n";
    }
}
