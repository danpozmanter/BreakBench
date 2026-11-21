// LEVEL: STD

import scala.concurrent.{Await, Future, TimeoutException}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.*

object Main {
  def main(args: Array[String]): Unit = {
    val task = Future { Thread.sleep(5000); 1 }
    try
      Await.result(task, 100.millis)
      println("done")
    catch case _: TimeoutException => println("timed out")
  }
}
