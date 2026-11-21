fun grade(score: Int): String {
    if (score > 50) return "pass"
    if (score < 50) return "fail"
    // CONTROL! return "borderline"
}

fun main(args: Array<String>) {
    println(grade(args[0].toInt()))
}
