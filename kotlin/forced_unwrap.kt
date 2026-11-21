fun find(id: Int): Int? = if (id == 1) 36 else null

fun main() {
    println("before")
    println(find(2)!! + 1)
}
