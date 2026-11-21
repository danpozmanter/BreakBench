// LEVEL: STD

import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

public class Main {
    public static void main(String[] args) {
        ZonedDateTime t = ZonedDateTime.of(2026, 3, 29, 1, 30, 0, 0, ZoneId.of("UTC"));
        System.out.println(t.withZoneSameInstant(ZoneId.of("Europe/Paris")).format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm")));
    }
}
