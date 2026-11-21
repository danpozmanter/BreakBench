// LEVEL: STD

import scala.concurrent.{Await, Future}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.Duration

object Main {
  def main(args: Array[String]): Unit = {
    val task = Future { Thread.sleep(50); 7 }
    println("started")
    println(Await.result(task, Duration.Inf))
  }
}
