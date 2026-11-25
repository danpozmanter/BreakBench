import java.util.concurrent.TimeoutException
import java.util.concurrent.atomic.AtomicInteger
import scala.concurrent.{Await, Future, Promise}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.*

object Main {
  val balance = AtomicInteger(100)
  val gate = Promise[Unit]()

  def charge(): Future[Unit] = gate.future.map(_ => balance.addAndGet(-30))

  def main(args: Array[String]): Unit = {
    val attempt = charge()
    try Await.result(attempt, 100.millis)
    catch {
      case _: TimeoutException =>
        gate.success(())
        Await.result(charge(), Duration.Inf) // BREAK!
    }
    Await.result(attempt, Duration.Inf)
    println(balance.get)
  }
}
