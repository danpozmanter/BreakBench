class Node {
    val data = ByteArray(4096) { 1 }
    var other: Node? = null
}

fun main(args: Array<String>) {
    val n = args[0].toLong()
    for (i in 0 until n) {
        val parent = Node()
        val child = Node()
        parent.other = child
        child.other = parent
    }
    println("done")
}
