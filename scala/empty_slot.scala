case class User(name: String)

object Main {
  def main(args: Array[String]): Unit = {
    val users = new Array[User](3)
    users(1) = User("bob")
    users(2) = User("carol")
    println(users(0).name.length) // CONTROL! println(if users(0) == null then "missing" else users(0).name.length.toString)
  }
}
