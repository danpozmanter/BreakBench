fun main(args: Array<String>) {
    val readings = listOf(10, 20, 30)
    val i = args[0].toInt()
    println(readings[i] - readings[i - 1])
}
