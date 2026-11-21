// LEVEL: LANGUAGE

class KindA extends RuntimeException
class KindB extends RuntimeException

object Main {
  def step(a: Boolean): Unit =
    try throw (if a then KindA() else KindB())
    catch case _: KindA => println("caught A")

  def main(args: Array[String]): Unit = {
    step(true)
    try step(false) catch case _: KindB => println("passed B")
  }
}
