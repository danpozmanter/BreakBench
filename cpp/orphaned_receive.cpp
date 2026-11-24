#include <future>
#include <iostream>
#include <string>
#include <thread>

int main() {
    std::promise<long> answer;
    std::future<long> result = answer.get_future();
    std::thread([&answer] { answer.set_value(std::stol("x")); }).detach(); // CONTROL! std::thread([&answer] { try { answer.set_value(std::stol("x")); } catch (...) { answer.set_exception(std::current_exception()); } }).detach();
    std::cout << result.get() << "\n"; // CONTROL! try { std::cout << result.get() << "\n"; } catch (const std::exception &) { std::cout << "failed\n"; }
}
