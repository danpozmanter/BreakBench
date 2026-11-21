sealed interface Shape
object Circle : Shape
object Square : Shape

fun describe(s: Shape) = when (s) {
    is Shape -> "other"
    Circle -> "circle"
}

fun main() {
    println(describe(Circle))
}
