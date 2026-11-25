import java.util.concurrent.LinkedBlockingQueue

object Main {
  def firstAnswer(): (Int, Seq[Thread]) = {
    val answers = LinkedBlockingQueue[Int]()
    val workers = Seq.fill(2) {
      val send: Runnable = () => answers.add(42)
      val worker = Thread(send)
      worker.start()
      worker
    }
    (answers.take(), workers)
  }

  def main(args: Array[String]): Unit = {
    val (answer, workers) = firstAnswer()
    println(answer)
    workers.foreach(_.join())
    println("done")
  }
}
