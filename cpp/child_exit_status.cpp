#include <cstdlib>
#include <iostream>

int main() {
    std::system("sh -c 'exit 3'");
    std::cout << "backed up\n";
}
