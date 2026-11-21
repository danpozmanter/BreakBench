object Units {
  opaque type Meters = Double
  opaque type Seconds = Double
  def meters(v: Double): Meters = v
  def seconds(v: Double): Seconds = v
  extension (a: Meters) {
    def plus(b: Meters): Meters = a + b
    def value: Double = a
  }
}

import Units.*

object Main {
  def main(args: Array[String]): Unit = {
    val total = meters(2).plus(meters(3))
    val wrong = meters(2).plus(seconds(3)) // BREAK!
    println(total.value)
  }
}
