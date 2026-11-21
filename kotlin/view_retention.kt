fun main(args: Array<String>) {
    val n = args[0].toInt()
    val heads = ArrayList<ByteArray>()
    val prefixes = ArrayList<String>()
    for (i in 0 until n) {
        val buf = ByteArray(32768) { i.toByte() }
        heads.add(buf.copyOfRange(0, 16))
        val big = ('a' + i % 26).toString().repeat(32768)
        prefixes.add(big.substring(0, 16))
    }
    println(heads.size)
}
