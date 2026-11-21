fun main(args: Array<String>) {
    val ids = listOf(10, 20, 30)
    val id = args[0]
    println(if (ids.contains(id)) "found" else "missing") // CONTROL! println(if (ids.contains(id.toInt())) "found" else "missing")
}
