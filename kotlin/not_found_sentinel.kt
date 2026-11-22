fun main(args: Array<String>) {
    val line = args[0]
    val pos = line.indexOf(':')
    println(line.substring(pos + 1))
}
