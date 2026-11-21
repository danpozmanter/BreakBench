object Main {
  def walk(n: Long): Long =
    if n == 0 then 0 else (walk(n - 1) * 31 + n) % 1_000_000_007L

  def main(args: Array[String]): Unit = {
    println(walk(args(0).toLong))
  }
}
