open class Shape {
    fun area(): Int = 0 // CONTROL! open fun area(): Int = 0
    fun describe(): String = "area ${area()}"
}

class Square : Shape() {
    fun area(): Int = 4 // CONTROL! override fun area(): Int = 4
}

fun main() {
    println(Square().describe())
}
