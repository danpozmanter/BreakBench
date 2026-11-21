// LEVEL: STD

object Main {
  def find(id: Int): Option[Int] = if id == 1 then Some(36) else None

  def main(args: Array[String]): Unit = {
    println("before")
    println(find(2).get + 1)
  }
}
