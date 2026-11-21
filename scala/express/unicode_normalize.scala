// LEVEL: STD

import java.text.Normalizer

object Main {
  def main(args: Array[String]): Unit =
    println(if Normalizer.normalize("é", Normalizer.Form.NFC) == "é" then "equal" else "different")
}
