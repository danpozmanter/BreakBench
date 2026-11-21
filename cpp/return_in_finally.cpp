#include <iostream>
#include <stdexcept>

static void write_report() {
    throw std::runtime_error("disk full");
}

struct LogCloser {
    ~LogCloser() {}
};

static void save_report() {
    LogCloser closer;
    write_report();
}

int main() {
    try {
        save_report();
        std::cout << "saved\n";
    } catch (const std::exception &) {
        std::cout << "failed\n";
    }
}
