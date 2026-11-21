fun main(args: Array<String>) {
    val a = args[0].toInt() != 0
    val b = true
    var r = "unset"
    if (a)
        if (b) r = "both"
    else
        r = "not a"
    println(r)
}
