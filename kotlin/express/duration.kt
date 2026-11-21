// LEVEL: STD

import kotlin.time.Duration.Companion.milliseconds
import kotlin.time.Duration.Companion.seconds

fun main() {
    val total = 1.5.seconds + 500.milliseconds
    val wrong = total + 5 // REJECT!
    println(total.inWholeMilliseconds)
}
