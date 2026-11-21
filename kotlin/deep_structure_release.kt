class Node(val value: Long, val next: Node?)

fun buildAndRelease(n: Long): Long {
    var head: Node? = null
    for (i in 0 until n) head = Node(i, head)
    return head?.value ?: 0
}

fun main(args: Array<String>) {
    buildAndRelease(args[0].toLong())
    System.gc()
    println("done")
}
