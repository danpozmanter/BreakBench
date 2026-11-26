import scala.collection.mutable.ArrayBuffer

object Main {
  def main(args: Array[String]): Unit = {
    val jobs = ArrayBuffer(1, 2, 3)
    assert(jobs.remove(jobs.length - 1) == 3)
    println(jobs.length)
  }
}
