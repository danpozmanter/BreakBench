object Main {
  def main(args: Array[String]): Unit = println(Map("a" -> 1, "a" -> 2).size) // CONTROL! def main(args: Array[String]): Unit = println(Map("a" -> 1, "b" -> 2).size)
}
