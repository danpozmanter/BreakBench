object Main {
  def main(args: Array[String]): Unit = {
    var session = new Array[Byte](64)
    "SECRET-TOKEN".getBytes.copyToArray(session, 32)
    session = null
    val reply = new Array[Byte](64)
    println(reply.slice(32, 44).map(b => f"$b%02x").mkString)
  }
}
