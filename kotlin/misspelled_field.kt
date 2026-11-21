class Config {
    var color = "blue"
}

fun main() {
    val cfg = Config()
    cfg.colour = "red" // BREAK!
    println(cfg.color)
}
