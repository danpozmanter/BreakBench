#include <future>
#include <iostream>
#include <memory>
#include <mutex>
#include <string>
#include <thread>
#include <vector>

int main(int, char **argv) {
    long rounds = std::stol(argv[1]);
    for (long i = 0; i < rounds; i++) {
        auto promise = std::make_shared<std::promise<std::vector<long>>>();
        auto once = std::make_shared<std::once_flag>();
        std::future<std::vector<long>> first = promise->get_future();
        for (int w = 0; w < 2; w++) {
            std::thread([promise, once, i] {
                std::vector<long> answer(8192, i);
                std::call_once(*once, [&] { promise->set_value(std::move(answer)); });
            }).detach();
        }
        first.get();
    }
    std::cout << "done\n";
}
