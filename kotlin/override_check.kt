open class Shape {
    open fun describe(): String = "shape"
}

class Circle : Shape() {
    override fun describe(): String = "circle"
    override fun descibe(): String = "circle" // BREAK!
}

fun main() {
    val s: Shape = Circle()
    println(s.describe())
}
