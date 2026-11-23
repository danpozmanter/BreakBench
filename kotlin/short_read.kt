fun main() {
    val child = ProcessBuilder("sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234").start()
    val message = ByteArray(16)
    child.inputStream.read(message)
    child.waitFor()
    println(String(message))
}
