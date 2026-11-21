// LEVEL: STD

#include <chrono>
#include <format>
#include <iostream>

int main() {
    using namespace std::chrono;
    sys_seconds t = sys_days{2026y / March / 29} + 1h + 30min;
    zoned_time z{"Europe/Paris", t};
    std::cout << std::format("{:%Y-%m-%d %H:%M}", z.get_local_time()) << "\n";
}
