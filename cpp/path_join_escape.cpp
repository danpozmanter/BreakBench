#include <filesystem>
#include <iostream>
#include <string>

int main(int, char **argv) {
    std::filesystem::path base = "/srv/app/uploads";
    std::string joined = (base / argv[1]).string(); // CONTROL! std::string user = argv[1]; user.erase(0, user.find_first_not_of('/')); std::string joined = (base / user).string();
    std::cout << (joined.rfind("/srv/app/uploads/", 0) == 0 ? "inside" : "escaped") << "\n";
}
