import java.util.concurrent.{Callable, Executors}
object Main {
  def main(args: Array[String]): Unit =
    val rounds = args(0).toInt
    val pool = Executors.newCachedThreadPool()
    for i <- 0 until rounds do
      val tasks = java.util.List.of[Callable[Array[Long]]](
        () => Array.fill(8192)(i.toLong),
        () => Array.fill(8192)(i + 1L),
      )
      val first = pool.invokeAny(tasks)
      assert(first.length == 8192)
    pool.shutdown()
    println("done")
}
