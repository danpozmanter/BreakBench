#include <iostream>
#include <string>
#include <vector>

struct User { std::string name; };

int main() {
    std::vector<User> users(3);
    users[1] = User{"bob"};
    users[2] = User{"carol"};
    std::cout << users[0].name.size() << "\n";
}
