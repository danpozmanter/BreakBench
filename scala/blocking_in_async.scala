import scala.concurrent.{Await, Future}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.Duration

object Main {
  def main(args: Array[String]): Unit = {
    val start = System.nanoTime()
    Await.result(Future.sequence(Seq(Future(Thread.sleep(500)), Future(Thread.sleep(500)))), Duration.Inf)
    println(if ((System.nanoTime() - start) / 1_000_000 < 800) "concurrent" else "serial")
  }
}
