#include <stdio.h>
#include <stdlib.h>

typedef struct { int customer; int day; } Order;

static int by_customer(const void *a, const void *b) {
    const Order *x = a, *y = b;
    return (x->customer > y->customer) - (x->customer < y->customer); // CONTROL! return x->customer != y->customer ? (x->customer > y->customer) - (x->customer < y->customer) : (x->day > y->day) - (x->day < y->day);
}

int main(void) {
    Order orders[200];
    for (int day = 0; day < 200; day++) orders[day] = (Order){day * 7 % 5, day};
    // UNDEFINED: qsort leaves the order of equal elements unspecified
    qsort(orders, 200, sizeof orders[0], by_customer);
    int kept = 1;
    for (int i = 1; i < 200; i++)
        if (orders[i].customer == orders[i - 1].customer && orders[i].day < orders[i - 1].day) kept = 0;
    puts(kept ? "kept" : "scrambled");
    return 0;
}
