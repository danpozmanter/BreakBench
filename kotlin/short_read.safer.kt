fun main() {
    val child = ProcessBuilder("sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234").start()
    val message = ByteArray(16)
    child.inputStream.readNBytes(message, 0, message.size)
    child.waitFor()
    println(String(message))
}
