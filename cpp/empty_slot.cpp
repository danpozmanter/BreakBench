// CONTROL! #include <optional>
#include <iostream>
#include <string>
#include <vector>

struct User { std::string name; };

int main() {
    std::vector<User> users(3); // CONTROL! std::vector<std::optional<User>> users(3);
    users[1] = User{"bob"};
    users[2] = User{"carol"};
    std::cout << users[0].name.size() << "\n"; // CONTROL! if (users[0]) std::cout << users[0]->name.size() << "\n"; else std::cout << "missing\n";
}
