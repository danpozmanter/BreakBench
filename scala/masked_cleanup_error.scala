import java.io.IOException
import scala.util.Using

class Report extends AutoCloseable {
  def write(text: String): Unit = throw IOException("disk full")
  override def close(): Unit = throw IOException("close failed")
}

object Main {
  def save(): Unit = Using.resource(Report())(_.write("totals"))

  def main(args: Array[String]): Unit =
    try save()
    catch case error: IOException => println(error.getMessage)
}
