fun size(n: Int): String {
    var label = "small"
    if (n > 5); // CONTROL! if (n > 5)
    {
        label = "big"
    }
    return label
}

fun main(args: Array<String>) {
    println(size(args[0].toInt()))
    println(size(args[1].toInt()))
}
