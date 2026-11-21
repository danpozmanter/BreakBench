import scala.collection.mutable.ArrayBuffer

object Main {
  def applyUpdate(weights: ArrayBuffer[Int]): Unit = {
    weights(1) = 5
    weights(3) = 0
  }

  def main(args: Array[String]): Unit = {
    val weights = ArrayBuffer(3, 3, 3, 3)
    val before = weights
    applyUpdate(weights)
    println(weights.indices.count(i => before(i) != weights(i)))
  }
}
