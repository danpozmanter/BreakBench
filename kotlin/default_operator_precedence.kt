fun cachedCount(name: String): Int? = if (name == "ada") 4 else null

fun main(args: Array<String>) {
    val cached = cachedCount(args[0])
    val count = cached ?: 0 + 1 // CONTROL! val count = (cached ?: 0) + 1
    println(count)
}
