#include <filesystem>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

const std::string scratch = "/tmp/bb_scratch/export.csv";

void export_rows(const std::vector<std::string> &rows) {
    std::ofstream file(scratch);
    file << "qty\n";
    for (const auto &row : rows) {
        int qty = std::stoi(row); // BREAK!
        // CONTROL! int qty; try { qty = std::stoi(row); } catch (...) { file.close(); std::filesystem::remove(scratch); throw; }
        file << qty << "\n";
    }
    file.close();
    std::filesystem::remove(scratch);
}

int main() {
    try {
        export_rows({"3", "x", "5"});
    } catch (const std::exception &) {
        std::cout << "export failed\n";
    }
}
