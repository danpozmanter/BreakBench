object Main {
  def main(args: Array[String]): Unit = {
    println(if "^[a-z]+$".r.matches(args(0)) then "accepted" else "rejected")
  }
}
