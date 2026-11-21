// LEVEL: STD

import scala.concurrent.{Await, Future}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.Duration
import scala.util.Try

object Main {
  def main(args: Array[String]): Unit = {
    val worker = Future[Int](throw IllegalStateException("boom"))
    if Try(Await.result(worker, Duration.Inf)).isFailure then println("worker crashed")
  }
}
