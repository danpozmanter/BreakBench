// LEVEL: STD

import scala.concurrent.{Await, Future}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.Duration
import scala.util.{Failure, Success, Try}

object Main {
  def main(args: Array[String]): Unit = {
    val task = Future[Int] { throw IllegalArgumentException("bad input") }
    Try(Await.result(task, Duration.Inf)) match
      case Success(v) => println(v)
      case Failure(e) => println(s"worker failed: ${e.getMessage}")
  }
}
