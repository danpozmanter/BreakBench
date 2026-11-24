fun main() {
    ProcessBuilder("sh", "-c", "exit 3").start().waitFor() // CONTROL! if (ProcessBuilder("sh", "-c", "exit 3").start().waitFor() != 0) { println("backup failed"); return }
    println("backed up")
}
