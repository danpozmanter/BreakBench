class Node {
    var next: Node? = null
    val payload = ByteArray(2048)
}

class Obj {
    val payload = ByteArray(2048)
    var callback: (() -> Int)? = null
}

fun main(args: Array<String>) {
    val n = args[0].toInt()
    var total = 0L
    repeat(n) {
        val a = Node()
        val b = Node()
        a.next = b
        b.next = a
        val o = Obj()
        o.callback = { o.payload.size }
        total += o.callback!!()
    }
    println(if (total < 0) "unreachable" else "done")
}
