import java.util.concurrent.LinkedBlockingQueue

object Main {
  def main(args: Array[String]): Unit = {
    val answer = LinkedBlockingQueue[Long]() // CONTROL! val answer = LinkedBlockingQueue[Option[Long]]()
    val worker: Runnable = () => answer.add("x".toLong) // CONTROL! val worker: Runnable = () => answer.add("x".toLongOption)
    Thread(worker).start()
    println(answer.take()) // CONTROL! println(answer.take().map(_.toString).getOrElse("failed"))
  }
}
