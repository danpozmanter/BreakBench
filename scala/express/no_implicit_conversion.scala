// LEVEL: LANGUAGE

object Main {
  def main(args: Array[String]): Unit =
    val big: Long = 42L
    val small: Int = big.toInt
    val wrong: Int = big // REJECT!
    println(small)
}
