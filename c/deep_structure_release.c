#include <stdio.h>
#include <stdlib.h>

struct node {
    long value;
    struct node *next;
};

int main(int argc, char **argv) {
    (void)argc;
    long n = atol(argv[1]);
    struct node *head = NULL;
    for (long i = 0; i < n; i++) {
        struct node *node = malloc(sizeof *node);
        node->value = i;
        node->next = head;
        head = node;
    }
    while (head) {
        struct node *next = head->next;
        free(head);
        head = next;
    }
    puts("done");
    return 0;
}
