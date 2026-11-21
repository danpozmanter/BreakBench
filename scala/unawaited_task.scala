import java.util.concurrent.atomic.AtomicInteger
import scala.concurrent.Future
import scala.concurrent.ExecutionContext.Implicits.global
object Main {
  def save(saved: AtomicInteger): Future[Unit] = Future {
    Thread.sleep(50)
    saved.incrementAndGet()
  }

  def main(args: Array[String]): Unit =
    val saved = AtomicInteger()
    val task = save(saved) // CONTROL! scala.concurrent.Await.result(save(saved), scala.concurrent.duration.Duration.Inf)
    println(saved.get())
}
