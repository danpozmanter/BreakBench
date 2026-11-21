fun main(args: Array<String>) {
    var status = "pending"
    if (args[0] == "ok") {
        val status = "done" // CONTROL! status = "done"
        System.err.println("status: $status")
    }
    println(status)
}
