// LEVEL: STD

fun main() {
    println(if (System.getenv("BB_UNSET") == null) "absent" else "present")
}
