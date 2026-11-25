fun main() {
    var passes = 0
    var i: UByte = 0u // BREAK!
    // CONTROL! var i: UShort = 0u
    while (i < 300u) {
        passes++
        i++
    }
    println(passes)
}
