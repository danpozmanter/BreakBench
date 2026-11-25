import java.nio.file.{Files, Path}

object Main {
  val lock: Path = Path.of("/tmp/bb_scratch/run.lock")

  def checkArgs(args: Array[String]): Boolean = {
    if (args.contains("--version")) {
      println("1.0")
      sys.exit(0) // BREAK!
      // CONTROL! return true
    }
    false
  }

  def main(args: Array[String]): Unit = {
    Files.writeString(lock, "")
    try {
      if (!checkArgs(args)) println("working")
    } finally Files.delete(lock)
  }
}
