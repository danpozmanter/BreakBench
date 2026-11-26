import java.time.DateTimeException
import java.time.LocalDate

fun main(args: Array<String>) {
    val date = LocalDate.of(args[0].toInt(), args[1].toInt(), args[2].toInt()) // BREAK!
    println(date) // BREAK!
    // CONTROL! try { println(LocalDate.of(args[0].toInt(), args[1].toInt(), args[2].toInt())) } catch (e: DateTimeException) { println("invalid") }
}
