object Main {
  private val lock = Object()
  private var debits = 0
  private var credits = 0

  def post(): Unit = lock.synchronized {
    debits += 50
    if debits > 0 then throw IllegalStateException("crash mid-update") // CONTROL! if debits > 0 then { debits -= 50; throw IllegalStateException("crash mid-update") }
    credits += 50
  }

  def main(args: Array[String]): Unit =
    val worker = Thread(() => post())
    worker.start()
    worker.join()
    lock.synchronized {
      println(if debits == credits then "balanced" else "unbalanced")
    }
}
