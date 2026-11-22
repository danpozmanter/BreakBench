#include <future>
#include <iostream>
#include <string>
#include <thread>

int main() {
    std::promise<long> answer;
    std::future<long> result = answer.get_future();
    std::thread([&answer] { answer.set_value(std::stol("x")); }).detach();
    std::cout << result.get() << "\n";
}
