class IntBox(var value: Int)

object Main {
  def make(): IntBox = {
    val local = IntBox(4242)
    local
  }

  def clobber(): Int = Array.fill(64)(7)(63)

  def main(args: Array[String]): Unit = {
    val r = make()
    clobber()
    println(r.value)
  }
}
