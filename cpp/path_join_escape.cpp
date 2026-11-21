#include <filesystem>
#include <iostream>
#include <string>

int main(int, char **argv) {
    std::filesystem::path base = "/srv/app/uploads";
    std::string joined = (base / argv[1]).string();
    std::cout << (joined.rfind("/srv/app/uploads/", 0) == 0 ? "inside" : "escaped") << "\n";
}
