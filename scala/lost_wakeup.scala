object Main {
  def main(args: Array[String]): Unit = {
    val woken = new Object
    // CONTROL! var ready = false
    woken.synchronized { woken.notify() } // CONTROL! woken.synchronized { ready = true; woken.notify() }
    val work: Runnable = () => {
      woken.synchronized { woken.wait() } // CONTROL! woken.synchronized { while !ready do woken.wait() }
      println("done")
    }
    val worker = Thread(work)
    worker.start()
    worker.join()
  }
}
