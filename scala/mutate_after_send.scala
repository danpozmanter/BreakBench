import java.util.concurrent.CountDownLatch
import java.util.concurrent.LinkedBlockingQueue

object Main {
  def main(args: Array[String]): Unit = {
    val lists = LinkedBlockingQueue[List[Int]]()
    val goOn = CountDownLatch(1)
    val work: Runnable = () => {
      val received = lists.take()
      goOn.await()
      println(received.head)
    }
    val worker = Thread(work)
    worker.start()
    var list = List(1, 2, 3)
    lists.put(list)
    list = 99 :: list.tail
    goOn.countDown()
    worker.join()
    assert(list.head == 99)
  }
}
