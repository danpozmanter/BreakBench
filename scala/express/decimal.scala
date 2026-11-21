// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit =
    println(if BigDecimal("0.1") + BigDecimal("0.2") == BigDecimal("0.3") then "equal" else "not equal")
}
