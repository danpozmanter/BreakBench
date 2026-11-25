class Counter {
  var count = 0

  def increment(): Unit = count += 1
}

object Main {
  def runTwice(f: () => Unit): Unit = {
    f()
    f()
  }

  def main(args: Array[String]): Unit = {
    val counter = Counter()
    runTwice(counter.increment)
    println(counter.count)
  }
}
