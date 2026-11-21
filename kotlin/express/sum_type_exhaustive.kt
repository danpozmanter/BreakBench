// LEVEL: LANGUAGE

sealed interface Shape
data class Circle(val r: Double) : Shape
data class Square(val side: Double) : Shape

fun name(s: Shape): String = when (s) {
    is Circle -> "circle"
    is Square -> "square"
}

fun bad(s: Shape): String = when (s) { is Circle -> "circle" } // REJECT!

fun main() {
    println(name(Circle(1.0)))
}
