object Main {
  final val Span = 1_000_000_000L * 60 * 60 * 24 * 365 * 300 // CONTROL! final val Span = BigInt(1_000_000_000L) * 60 * 60 * 24 * 365 * 300

  def main(args: Array[String]): Unit = println(Span)
}
