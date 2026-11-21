#include <stdio.h>

struct Account { int balance; };

static void transfer(struct Account *from, struct Account *to, int amount) {
    int new_from = from->balance - amount;
    int new_to = to->balance + amount;
    from->balance = new_from;
    to->balance = new_to;
}

int main(void) {
    struct Account a = {100};
    transfer(&a, &a, 30);
    printf("%d\n", a.balance);
    return 0;
}
