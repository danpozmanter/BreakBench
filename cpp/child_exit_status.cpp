#include <cstdlib>
#include <iostream>

int main() {
    std::system("sh -c 'exit 3'"); // CONTROL! if (std::system("sh -c 'exit 3'") != 0) { std::cout << "backup failed\n"; return 0; }
    std::cout << "backed up\n";
}
