object Main {
  def main(args: Array[String]): Unit = {
    val claimed = args(0).toInt
    val buf = new Array[Byte](64)
    "SECRET-KEY-0042".getBytes("US-ASCII").copyToArray(buf, 2)
    "hi".getBytes("US-ASCII").copyToArray(buf, 0)
    val payload = buf.slice(0, 2)
    // CONTROL! if claimed > payload.length then { println("invalid"); return }
    val reply = payload.slice(0, claimed)
    println(String(reply, "US-ASCII"))
  }
}
