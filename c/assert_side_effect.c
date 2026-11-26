#include <assert.h>
#include <stdio.h>

static int jobs[] = {1, 2, 3};
static int count = 3;

static int take_last(void) { return jobs[--count]; }

int main(void) {
    assert(take_last() == 3); // CONTROL! int last = take_last(); assert(last == 3); (void)last;
    printf("%d\n", count);
    return 0;
}
