#include <iostream>
#include <vector>

struct Account { int balance; };

int main() {
    std::vector<Account> accounts{{100}};
    for (auto acct : accounts) acct.balance += 50;
    std::cout << accounts[0].balance << "\n";
}
