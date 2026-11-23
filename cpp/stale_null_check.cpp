#include <iostream>
#include <string>

struct User { std::string name; };
struct Session { User *user; };

static void logout(Session &session) { session.user = nullptr; }

int main() {
    User alice{"alice"};
    Session session{&alice};
    if (session.user != nullptr) {
        logout(session);
        std::cout << session.user->name.size() << "\n";
    }
}
