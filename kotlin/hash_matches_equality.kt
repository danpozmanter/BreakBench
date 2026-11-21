class Point(val x: Int, val y: Int, val label: String) {
    override fun equals(other: Any?) = other is Point && other.x == x && other.y == y
}

fun main() {
    println(hashSetOf(Point(1, 2, "a"), Point(1, 2, "b")).size)
}
