fun main(args: Array<String>) {
    val ready = args[0] == "yes"
    val approved = args[1] == "yes"
    val ok = ready and approved
    println(if (ok) "go" else "wait")
}
