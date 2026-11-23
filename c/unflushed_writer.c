#include <stdio.h>

int main(void) {
    FILE *report = fopen("/tmp/bb_report.txt", "w");
    if (report == NULL) return 1;
    fprintf(report, "total=42\n");
    return 0;
}
