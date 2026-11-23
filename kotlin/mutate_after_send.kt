import java.util.concurrent.CountDownLatch
import java.util.concurrent.LinkedBlockingQueue
import kotlin.concurrent.thread

fun main() {
    val lists = LinkedBlockingQueue<MutableList<Int>>()
    val goOn = CountDownLatch(1)
    val worker = thread {
        val received = lists.take()
        goOn.await()
        println(received[0])
    }
    val list = mutableListOf(1, 2, 3)
    lists.put(list)
    list[0] = 99
    goOn.countDown()
    worker.join()
}
