// LEVEL: STD

#include <locale.h>
#include <stdio.h>
#include <uchar.h>
#include <wchar.h>

int main(void) {
    setlocale(LC_ALL, "C.UTF-8");
    const char bytes[] = {0x61, (char)0xFF};
    mbstate_t st = {0};
    char32_t c;
    size_t i = 0, n = sizeof bytes;
    int valid = 1;
    while (i < n) {
        size_t r = mbrtoc32(&c, bytes + i, n - i, &st);
        if (r == (size_t)-1 || r == (size_t)-2) { valid = 0; break; }
        i += r == 0 ? 1 : r;
    }
    puts(valid ? "valid" : "invalid");
    return 0;
}
