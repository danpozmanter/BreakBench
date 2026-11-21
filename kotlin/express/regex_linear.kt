// LEVEL: STD

fun main() {
    println(if (Regex("^(a+)+$").matches("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!")) "match" else "no match")
}
