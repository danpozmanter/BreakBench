fun main(args: Array<String>) {
    println(if (Regex("^[a-z]+$").matches(args[0])) "accepted" else "rejected")
}
