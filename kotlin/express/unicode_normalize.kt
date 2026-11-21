// LEVEL: STD

import java.text.Normalizer

fun main() {
    println(if (Normalizer.normalize("é", Normalizer.Form.NFC) == "é") "equal" else "different")
}
