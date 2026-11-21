// LEVEL: STD

#include <stdio.h>
#include <threads.h>

static int slots[10];

static int fill(void *arg) {
    int start = *(int *)arg;
    for (int i = start; i < start + 5; i++) slots[i] = i;
    return 0;
}

int main(void) {
    int a = 0, b = 5;
    thrd_t t1, t2;
    thrd_create(&t1, fill, &a);
    thrd_create(&t2, fill, &b);
    thrd_join(t1, NULL);
    thrd_join(t2, NULL);
    int sum = 0;
    for (int i = 0; i < 10; i++) sum += slots[i];
    printf("%d\n", sum);
    return 0;
}
