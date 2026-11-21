// LEVEL: STD

import java.text.BreakIterator

object Main {
  def main(args: Array[String]): Unit = {
    val s = "abcdefgh👍🏽xyz"
    val it = BreakIterator.getCharacterInstance()
    it.setText(s)
    var end = 0
    for _ <- 1 to 9 do end = it.next()
    println(s.substring(0, end))
  }
}
