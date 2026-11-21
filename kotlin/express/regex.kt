// LEVEL: STD

fun main() {
    val re = Regex("^[a-z]+[0-9]{2}$")
    println("${re.matches("abc12")} ${re.matches("abc1")}")
}
