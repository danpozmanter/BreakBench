object Main {
  def process(request: String, id: Int): Unit = {
    val buf = new Array[Byte](4096)
    s"$request#$id".getBytes.copyToArray(buf)
    if buf(0) != '{'.toByte then throw IllegalArgumentException("invalid request")
  }

  def main(args: Array[String]): Unit = {
    val n = args(0).toInt
    var failures = 0
    for i <- 0 until n do
      try process("not json", i)
      catch case _: IllegalArgumentException => failures += 1
    println(if failures == n then "done" else "unexpected")
  }
}
