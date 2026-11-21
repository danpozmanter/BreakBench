fun isOdd(n: Long): Boolean = n % 2 == 1L

fun main(args: Array<String>) {
    println(if (isOdd(args[0].toLong())) "odd" else "even")
}
