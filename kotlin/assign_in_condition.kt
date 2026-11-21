fun main(args: Array<String>) {
    var x = args[0].toInt()
    var label = "not one"
    if (x = 1) label = "one" // BREAK!
    // CONTROL! if (x == 1) label = "one"
    x += 0
    println(label)
}
