fun main(args: Array<String>) {
    val name = "a👍b"
    val n = args[0].toInt()
    println(name.substring(0, n)) // CONTROL! println(name.substring(0, name.offsetByCodePoints(0, n)))
}
