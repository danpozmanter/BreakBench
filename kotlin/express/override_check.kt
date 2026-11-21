// LEVEL: LANGUAGE

open class Shape {
    open fun describe(): String = "shape"
}

class Circle : Shape() {
    override fun describe(): String = "circle"
    override fun descibe(): String = "circle" // REJECT!
}

fun main() {
    val s: Shape = Circle()
    println(s.describe())
}
