// LEVEL: STD

object Main {
  def main(args: Array[String]): Unit = {
    sys.addShutdownHook {
      println("cleaned up")
      System.out.flush()
      Runtime.getRuntime.halt(0)
    }
    new ProcessBuilder("kill", "-TERM", ProcessHandle.current().pid().toString).start().waitFor()
    Thread.sleep(5000)
  }
}
