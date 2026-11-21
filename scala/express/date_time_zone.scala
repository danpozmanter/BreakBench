// LEVEL: STD

import java.time.{ZoneId, ZonedDateTime}
import java.time.format.DateTimeFormatter

object Main {
  def main(args: Array[String]): Unit = {
    val t = ZonedDateTime.of(2026, 3, 29, 1, 30, 0, 0, ZoneId.of("UTC"))
    println(t.withZoneSameInstant(ZoneId.of("Europe/Paris")).format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm")))
  }
}
