// LEVEL: LANGUAGE

@JvmInline
value class Meters(val v: Double) {
    operator fun plus(o: Meters) = Meters(v + o.v)
}

@JvmInline
value class Seconds(val v: Double)

fun main() {
    val total = Meters(2.0) + Meters(3.0)
    val wrong = Meters(2.0) + Seconds(3.0) // REJECT!
    println(total.v)
}
