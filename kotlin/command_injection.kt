import java.io.File

fun main(args: Array<String>) {
    File("/tmp/bb_pwned").delete()
    Runtime.getRuntime().exec("echo " + args[0]).waitFor()
    println(if (File("/tmp/bb_pwned").exists()) "injected" else "safe")
}
