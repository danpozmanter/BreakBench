#include <stdio.h>

typedef struct { int balance; } Account;

int main(void) {
    Account accounts[1] = {{100}};
    for (int i = 0; i < 1; i++) accounts[i].balance += 50;
    printf("%d\n", accounts[0].balance);
    return 0;
}
