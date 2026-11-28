fun main(args: Array<String>) {
    val counts = IntArray(256)
    for (b in args[0].toByteArray()) {
        counts[b.toInt()]++ // CONTROL! counts[b.toInt() and 0xff]++
    }
    println((128 until 256).sumOf { counts[it] })
}
