fun main(args: Array<String>) {
    println(if (Regex("^(a+)+$").matches(args[0])) "match" else "no match")
}
