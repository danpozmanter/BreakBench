import java.io.{BufferedWriter, FileWriter}

object Main {
  def main(args: Array[String]): Unit = {
    val report = BufferedWriter(FileWriter("/tmp/bb_report.txt"))
    report.write("total=42\n")
    // CONTROL! report.close()
  }
}
