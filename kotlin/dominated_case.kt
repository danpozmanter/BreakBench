sealed interface Shape
object Circle : Shape
object Square : Shape

fun describe(s: Shape) = when (s) {
    is Shape -> "other" // CONTROL! Circle -> "circle"
    Circle -> "circle" // CONTROL! is Shape -> "other"
}

fun main() {
    println(describe(Circle))
}
