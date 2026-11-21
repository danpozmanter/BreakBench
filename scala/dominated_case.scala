enum Shape:
  case Circle, Square

def describe(s: Shape): String = s match
  case _ => "other"
  case Shape.Circle => "circle"

object Main {
  def main(args: Array[String]): Unit = println(describe(Shape.Circle))
}
