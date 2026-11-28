object Main {
  def main(args: Array[String]): Unit = {
    val counts = new Array[Int](256)
    for (b <- args(0).getBytes("UTF-8")) {
      counts(b) += 1 // CONTROL! counts(b & 0xff) += 1
    }
    println(counts.slice(128, 256).sum)
  }
}
