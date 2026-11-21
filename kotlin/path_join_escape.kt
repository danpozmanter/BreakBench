import java.nio.file.Path

fun main(args: Array<String>) {
    val joined = Path.of("/srv/app/uploads").resolve(args[0])
    println(if (joined.startsWith("/srv/app/uploads")) "inside" else "escaped")
}
