import java.nio.file.{Files, Path}

object Main {
  val lock: Path = Path.of("/tmp/bb_scratch/reader.lock")

  def rows(): Iterator[String] = {
    Files.writeString(lock, "")
    val lines = Iterator("alpha", "beta", "gamma")
    new Iterator[String] {
      def hasNext: Boolean = {
        val more = lines.hasNext
        if (!more) Files.deleteIfExists(lock)
        more
      }
      def next(): String = lines.next()
    }
  }

  def main(args: Array[String]): Unit = {
    rows().take(1).foreach(println) // BREAK!
    // CONTROL! rows().zipWithIndex.foreach { case (line, i) => if (i == 0) println(line) }
  }
}
