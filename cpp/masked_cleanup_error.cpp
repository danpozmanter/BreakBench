#include <iostream>
#include <stdexcept>

struct Report {
    void write() { throw std::runtime_error("disk full"); }
    // A destructor cannot throw, so a failed close here cannot replace the error in flight.
    ~Report() { close_failed = true; }
    bool close_failed = false;
};

void save() {
    Report report;
    report.write();
}

int main() {
    try {
        save();
    } catch (const std::exception& error) {
        std::cout << error.what() << "\n";
    }
}
