// LEVEL: STD

fun main(args: Array<String>) {
    println(if (args[0].toLongOrNull() == null) "invalid" else "valid")
}
