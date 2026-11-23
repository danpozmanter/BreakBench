object Main {
  def main(args: Array[String]): Unit = {
    val woken = new Object
    woken.synchronized { woken.notify() }
    val work: Runnable = () => {
      woken.synchronized { woken.wait() }
      println("done")
    }
    val worker = Thread(work)
    worker.start()
    worker.join()
  }
}
