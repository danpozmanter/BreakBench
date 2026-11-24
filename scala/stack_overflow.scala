object Main {
  def walk(n: Long): Long =
    if n == 0 then 0 else (walk(n - 1) * 31 + n) % 1_000_000_007L

  def main(args: Array[String]): Unit = {
    println(walk(args(0).toLong)) // CONTROL! val n = args(0).toLong; var acc = 0L; var i = 1L; while i <= n do { acc = (acc * 31 + i) % 1_000_000_007L; i += 1 }; println(acc)
  }
}
