fun findName(id: Long): String? = if (id == 1L) "alice" else null

fun main(args: Array<String>) {
    val name = findName(args[0].toLong())
    println("hello, $name") // CONTROL! println("hello, ${name ?: "nobody"}")
}
