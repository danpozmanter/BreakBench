// LEVEL: STD

fun main() {
    val p = ProcessBuilder("echo", "hi; touch /tmp/bb_x").start()
    print(p.inputStream.readAllBytes().decodeToString())
    p.waitFor()
}
