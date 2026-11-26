#include <chrono>
#include <iostream>
#include <string>

int main(int, char **argv) {
    using namespace std::chrono;
    year_month_day date{year{std::stoi(argv[1])}, month{static_cast<unsigned>(std::stoi(argv[2]))}, day{static_cast<unsigned>(std::stoi(argv[3]))}};
    std::cout << date << "\n"; // CONTROL! if (!date.ok()) std::cout << "invalid\n"; else std::cout << date << "\n";
}
