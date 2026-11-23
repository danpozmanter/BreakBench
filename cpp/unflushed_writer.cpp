#include <fstream>

int main() {
    std::ofstream report("/tmp/bb_report.txt");
    report << "total=42\n";
}
