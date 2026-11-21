// LEVEL: STD

import java.text.BreakIterator

fun main() {
    val s = "abcdefgh👍🏽xyz"
    val breaks = BreakIterator.getCharacterInstance()
    breaks.setText(s)
    var end = 0
    repeat(9) { end = breaks.next() }
    println(s.substring(0, end))
}
