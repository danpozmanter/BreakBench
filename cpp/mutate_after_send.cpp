#include <future>
#include <iostream>
#include <thread>
#include <vector>

int main() {
    std::promise<std::vector<int>> inbox;
    std::promise<void> go_on;
    auto lists = inbox.get_future();
    auto signal = go_on.get_future();
    std::thread worker([&lists, &signal] {
        auto received = lists.get();
        signal.wait();
        std::cout << received[0] << "\n";
    });
    std::vector<int> list{1, 2, 3};
    inbox.set_value(list);
    list[0] = 99;
    go_on.set_value();
    worker.join();
}
