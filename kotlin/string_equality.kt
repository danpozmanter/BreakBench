fun main(args: Array<String>) {
    val s = "ab" + args[0]
    println(if (s == "abc") "equal" else "different")
}
