import java.io.FileInputStream
import scala.util.Using

object Main {
  def main(args: Array[String]): Unit = {
    val count = args(0).toLong
    var total = 0L
    Using.resource(FileInputStream("/dev/zero")) { source =>
      var i = 0L
      while (i < count) {
        val message = source.readNBytes(4096)
        total += message.length
        i += 1
      }
    }
    println(total)
  }
}
