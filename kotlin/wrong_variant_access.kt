sealed class Value {
    data class IntValue(val n: Int) : Value()
    data class Text(val text: String) : Value()
}

fun main() {
    val v: Value = Value.IntValue(42)
    println((v as Value.Text).text.length) // CONTROL! println(if (v is Value.Text) v.text.length.toString() else "not text")
}
