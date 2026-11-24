enum Shape:
  case Circle, Square

def describe(s: Shape): String = s match
  case _ => "other" // CONTROL! case Shape.Circle => "circle"
  case Shape.Circle => "circle" // CONTROL! case _ => "other"

object Main {
  def main(args: Array[String]): Unit = println(describe(Shape.Circle))
}
