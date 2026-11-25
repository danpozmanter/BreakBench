import scala.util.boundary, boundary.break

object Main {
  def totalUntilStop(codes: Array[String]): Int = {
    var total = 0
    boundary {
      for (c <- codes) {
        val code = c.toInt
        code match {
          case 0 => break()
          case _ => total += code
        }
      }
    }
    total
  }

  def main(args: Array[String]): Unit = {
    println(totalUntilStop(args))
  }
}
