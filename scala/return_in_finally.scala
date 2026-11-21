import java.io.IOException
object Main {
  def writeReport(): Unit = throw IOException("disk full")

  def closeLog(): Unit = ()

  def saveReport(): Unit =
    try writeReport()
    finally
      closeLog()
      return // BREAK!

  def main(args: Array[String]): Unit =
    try
      saveReport()
      println("saved")
    catch case _: IOException => println("failed")
}
