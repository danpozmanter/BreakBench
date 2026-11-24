#include <iostream>

struct Account { int balance; };

static void transfer(Account &from, Account &to, int amount) {
    // CONTROL! if (&from == &to) return;
    int new_from = from.balance - amount;
    int new_to = to.balance + amount;
    from.balance = new_from;
    to.balance = new_to;
}

int main() {
    Account a{100};
    transfer(a, a, 30);
    std::cout << a.balance << "\n";
}
