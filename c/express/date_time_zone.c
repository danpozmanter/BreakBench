// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
    setenv("TZ", "Europe/Paris", 1);
    tzset();
    struct tm utc = {.tm_year = 126, .tm_mon = 2, .tm_mday = 29, .tm_hour = 1, .tm_min = 30};
    time_t t = timegm(&utc);
    struct tm local;
    localtime_r(&t, &local);
    char buf[32];
    strftime(buf, sizeof buf, "%Y-%m-%d %H:%M", &local);
    puts(buf);
    return 0;
}
