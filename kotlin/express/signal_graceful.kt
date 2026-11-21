// LEVEL: STD

fun main() {
    Runtime.getRuntime().addShutdownHook(Thread {
        println("cleaned up")
        System.out.flush()
        Runtime.getRuntime().halt(0)
    })
    ProcessBuilder("kill", "-TERM", ProcessHandle.current().pid().toString()).start().waitFor()
    Thread.sleep(5000)
}
