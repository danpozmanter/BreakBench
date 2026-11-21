
object Main {
  def main(args: Array[String]): Unit =
    val names = List(
      "alice",
      "bob" // CONTROL! "bob",
      "carol",
    )
    println(names.size)
}
