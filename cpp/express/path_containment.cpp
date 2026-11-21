// LEVEL: STD

#include <filesystem>
#include <iostream>

int main() {
    namespace fs = std::filesystem;
    fs::path base = "/srv/app";
    fs::path p = (base / "../../etc/passwd").lexically_normal();
    auto rel = p.lexically_relative(base);
    bool inside = !rel.empty() && *rel.begin() != "..";
    std::cout << (inside ? "inside" : "outside") << "\n";
}
