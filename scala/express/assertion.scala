// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    println("before")
    assert(args.length + 1 == 3)
    println("after")
  }
}
