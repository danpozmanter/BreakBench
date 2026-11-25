import java.io.File

val scratch = File("/tmp/bb_scratch/export.csv")

fun export(rows: List<String>) {
    scratch.writeText("qty\n")
    for (row in rows) {
        val qty = row.toInt() // BREAK!
        // CONTROL! val qty = row.toIntOrNull() ?: run { scratch.delete(); throw NumberFormatException("invalid row $row") }
        scratch.appendText("$qty\n")
    }
    scratch.delete()
}

fun main() {
    try {
        export(listOf("3", "x", "5"))
    } catch (e: NumberFormatException) {
        println("export failed")
    }
}
