
object Main {
  def main(args: Array[String]): Unit =
    var greeting = "hello"
    greeting(0) = 'j' // CONTROL! greeting = "j" + greeting.substring(1)
    println(greeting)
}
