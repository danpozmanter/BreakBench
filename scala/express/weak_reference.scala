// LEVEL: STD

import java.lang.ref.WeakReference

object Main {
  def main(args: Array[String]): Unit = {
    var strong: AnyRef = new Object
    val weak = WeakReference(strong)
    strong = null
    System.gc()
    println(if weak.get() == null then "gone" else "alive")
  }
}
