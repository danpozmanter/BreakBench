import java.util.concurrent.LinkedBlockingQueue

object Main {
  def main(args: Array[String]): Unit = {
    val answer = LinkedBlockingQueue[Long]()
    val worker: Runnable = () => answer.add("x".toLong)
    Thread(worker).start()
    println(answer.take())
  }
}
