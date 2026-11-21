case class User(name: String)

object Main {
  def findUser(id: Long): Option[User] = if id == 1 then Some(User("alice")) else None

  def main(args: Array[String]): Unit = {
    val u = findUser(args(0).toLong)
    println(u.name.length) // BREAK!
    println(u)
  }
}
