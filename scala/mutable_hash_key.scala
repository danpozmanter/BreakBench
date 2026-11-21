import scala.collection.mutable

object Main {
  def main(args: Array[String]): Unit =
    val seen = mutable.HashSet[List[Int]]()
    var key = List(1, 2)
    seen += key
    key = key.updated(0, 9)
    for e <- seen do println(if seen.contains(e) then "found" else "lost")
}
