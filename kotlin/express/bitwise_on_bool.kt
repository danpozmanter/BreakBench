// LEVEL: LANGUAGE

fun main() {
    val s = "abc"
    if (s.isNotEmpty() && s[0] == 'a') println("yes")
    if ((s.isNotEmpty()) & (s[0] == 'a')) println("both") // REJECT!
}
