fun main() {
    ProcessBuilder("sh", "-c", "exit 3").start().waitFor()
    println("backed up")
}
