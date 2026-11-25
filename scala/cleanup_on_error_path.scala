import java.nio.file.{Files, Path, StandardOpenOption}

object Main {
  val scratch: Path = Path.of("/tmp/bb_scratch/export.csv")

  def exportRows(rows: List[String]): Unit = {
    Files.writeString(scratch, "qty\n")
    for (row <- rows) {
      val qty = row.toInt // BREAK!
      // CONTROL! val qty = row.toIntOption.getOrElse { Files.delete(scratch); throw NumberFormatException(s"invalid row $row") }
      Files.writeString(scratch, s"$qty\n", StandardOpenOption.APPEND)
    }
    Files.delete(scratch)
  }

  def main(args: Array[String]): Unit = {
    try exportRows(List("3", "x", "5"))
    catch { case _: NumberFormatException => println("export failed") }
  }
}
