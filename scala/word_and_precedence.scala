object Main {
  def main(args: Array[String]): Unit = {
    val ready = args(0) == "yes"
    val approved = args(1) == "yes"
    val ok = ready && approved
    println(if ok then "go" else "wait")
  }
}
