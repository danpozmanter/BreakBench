class Config {
  var color = "blue"
}

object Main {
  def main(args: Array[String]): Unit = {
    val cfg = Config()
    cfg.colour = "red" // BREAK!
    println(cfg.color)
  }
}
