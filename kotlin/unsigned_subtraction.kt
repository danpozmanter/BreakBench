const val HEADER = 5

fun main(args: Array<String>) {
    val message = args[0]
    val payload = message.length - HEADER
    if (payload < 0) {
        println("short")
    } else {
        println(payload)
    }
}
